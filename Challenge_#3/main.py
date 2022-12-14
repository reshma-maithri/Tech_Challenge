def retrieve_value(input_object, key_path):
    #input_object_value = input_object
    for pr in key_path:
        #print(pr)
        input_object = input_object.get(pr)
        #print(input_object)
        if input_object is None:
            return None
    return input_object

object_in_string_format  = input("Please enter valid object in nested format eg: {\"a\":{\"b\":{\"c\":\"d\"}}}:")
object = eval(object_in_string_format)
print("object:")
print(object)

key_in_string_format = input("Please enter the key in the form a/b/c:")
key_path=key_in_string_format.split('/')
print("key_path:")
print(key_path)

value = retrieve_value(object,key_path)
print("value:")
print (value)