import json

from flask import Flask, jsonify

app = Flask(__name__)


def get_json():
    with open('song_data.json') as _data:
        json_data = json.load(_data)

    counter = 1
    '''
    Adding song_id key_value in the song json
    '''
    for item in json_data:
        item['song_id'] = counter
        counter += 1
    return json_data


@app.route('/')
def index():
    data = get_json()
    return jsonify(data)


if __name__ == '__main__':
    app.run(debug=True)

