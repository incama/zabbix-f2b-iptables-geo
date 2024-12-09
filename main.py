import json
result = []
with open('/tmp/iptables.txt') as f:
    lines = f.readlines()
    for line in lines:
        r = line.split('\n')
        result.append({'ip': r[0]})
# print(result)
with open('/tmp/data.json', 'w') as fp:
    json.dump(result, fp)
