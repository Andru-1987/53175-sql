import sys
import csv
import json
import argparse

def json_to_csv(input_json_file, output_csv_file):
    """
    python json_to_csv.py --input input.json --output output.csv
    
    """
    with open(input_json_file, 'r') as f:
        data = json.load(f)

    with open(output_csv_file, 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=data[0].keys())
        writer.writeheader()
        writer.writerows(data)

    print(f"CSV file '{output_csv_file}' created successfully.")

if __name__ == "__main__":
    print("Usage: python json_to_csv.py --input input.json --output output.csv")
    
    if len(sys.argv) != 5:
        print(sys.argv)
        sys.exit(1)
    
    parser = argparse.ArgumentParser(description='Convert JSON to CSV')
    parser.add_argument('--input', dest='input_json_file', required=True, help='Input JSON file path')
    parser.add_argument('--output', dest='output_csv_file', required=True, help='Output CSV file name')

    args = parser.parse_args()

    json_to_csv(args.input_json_file, args.output_csv_file)

    print("done!")
