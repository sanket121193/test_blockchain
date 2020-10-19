package main



import (

        "encoding/json"

        "fmt"

        "bytes"

        "strconv"

        //"strings"

        "time"



        "github.com/hyperledger/fabric/core/chaincode/shim"

        pb "github.com/hyperledger/fabric/protos/peer"

)


type Identity struct {

        Did       string `json:"did"`
        Emailid   string `json:"emailid"`
        Firstname string `json:"firstname"`
        Lastname  string `json:"lastname"`
        Publickey  string `json:"publickey"`
        

}



type IdentityCC  struct {

}



func (t *IdentityCC ) Init(stub shim.ChaincodeStubInterface) pb.Response {

        return shim.Success(nil)

}



/*

 * The Invoke method is called as a result of an application request to run the Smart Contract "certificate"

 */

func (t *IdentityCC ) Invoke(stub shim.ChaincodeStubInterface) pb.Response {

        fmt.Println("chaincode_custom Invoke")

        function, args := stub.GetFunctionAndParameters()

	 if function == "addUser" {

                return t.addUser(stub, args)

        } else if function == "getUser" {

                return t.getUser(stub, args)

        } else if function == "getAllUser" {

                return t.getAllUser(stub, args)

        } 
 
       return shim.Error("Invalid invoke function name")

}

func (t *IdentityCC) getUser(stub shim.ChaincodeStubInterface, args []string) pb.Response {

        var A string // Entities

        var err error



        if len(args) != 1 {

                return shim.Error("Incorrect number of arguments. Expecting certificate Id to query")

        }



        A = args[0]


 // Get the state from the ledger

        Avalbytes, err := stub.GetState(A)

        if err != nil {

                jsonResp := "{\"Error\":\"Failed to get state for " + A + "\"}"

                return shim.Error(jsonResp)

        }



        if Avalbytes == nil {

                jsonResp := "{\"Error\":\"Nil amount for " + A + "\"}"

                return shim.Error(jsonResp)

        }


return shim.Success(Avalbytes)

}

func (t *IdentityCC) addUser(stub shim.ChaincodeStubInterface, args []string) pb.Response {

        fmt.Println("Add User.. ")

        var identity Identity

        var err error


 	isExistAsBytes, _ := stub.GetState(args[0])

        if isExistAsBytes != nil {

                return shim.Error(err.Error())

        }



        identity.Did = args[0]

        identity.Emailid = args[1]

        identity.Firstname = args[2]

        identity.Lastname = args[3]
        identity.Publickey = args[4]





        identityAsBytes, _ := json.Marshal(identity)

      err = stub.PutState(identity.Did,identityAsBytes)

        if err != nil {

                return shim.Error(err.Error())

        }



        return shim.Success(nil)

}






func (t *IdentityCC) getAllUser(stub shim.ChaincodeStubInterface, args []string) pb.Response {



        if len(args) < 1 {

		 return shim.Error("Incorrect number of arguments. Expecting 1")

        }



        Did := args[0]



        fmt.Printf("- start getAllUSer: %s\n", Did)


    resultsIterator, err := stub.GetHistoryForKey(Did)

        if err != nil {

                return shim.Error(err.Error())

        }

        defer resultsIterator.Close()



        var buffer bytes.Buffer

        buffer.WriteString("[")



        bArrayMemberAlreadyWritten := false

        for resultsIterator.HasNext() {

                response, err := resultsIterator.Next()

                if err != nil {

		return shim.Error(err.Error())

                }

                if bArrayMemberAlreadyWritten == true {

                        buffer.WriteString(",")

                }

                buffer.WriteString("{\"TxId\":")

                buffer.WriteString("\"")

                buffer.WriteString(response.TxId)

                buffer.WriteString("\"")

                buffer.WriteString(", \"Value\":")

                if response.IsDelete {

                        buffer.WriteString("null")

                } else {

		 buffer.WriteString(string(response.Value))

                }



                buffer.WriteString(", \"Timestamp\":")

                buffer.WriteString("\"")

                buffer.WriteString(time.Unix(response.Timestamp.Seconds, int64(response.Timestamp.Nanos)).String())

                buffer.WriteString("\"")



                buffer.WriteString(", \"IsDelete\":")

                buffer.WriteString("\"")

                buffer.WriteString(strconv.FormatBool(response.IsDelete))

                buffer.WriteString("\"")
	



                buffer.WriteString("}")

                bArrayMemberAlreadyWritten = true

        }

        buffer.WriteString("]")



        fmt.Printf("- getHistoryForMarble returning:\n%s\n", buffer.String())


	return shim.Success(buffer.Bytes())

}



func main() {

        err := shim.Start(new(IdentityCC))

        if err != nil {

                fmt.Printf("Error starting  chaincode: %s", err)

        }

}

   

