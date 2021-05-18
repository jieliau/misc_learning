import json

# From dict to json format
data = {
    'key1': 'value1',
    'key2': 'value2'
}

datajson = json.dumps(data)
datajson = json.dumps(data, sort_key = True)

# From dict to json format and save it
data = {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'}
with open('abc.json', 'w', encoding='utf-8') as f:
    json.dump(data, f)

# From json format to dict
jsondata = '{"key1": "value1", "key2": "value2"}'
data = json.loads(jsondata)

# Read json file and translate to dict
with open('abc.json', 'r', encoding='utf-8') as f:
    output = json.load(f)
