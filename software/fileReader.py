import csv
import numpy as np
import matplotlib.pyplot as plt

fig = plt.figure(figsize=(12, 10), dpi=70)
ax = fig.add_subplot(111)

x = range(1,101)# [1,3,5,7,8]
y = range(1,101) #[0.55,0.65,0.75,0.85,0.95]

x, y = np.meshgrid(x, y)
z=[0]*10000
intensity = np.array(z).reshape(100, 100)
# intensity[10][10] = 34
# intensity[30][20] = 134

with open('image.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    j = 0
    for row in reader:
        for i in range(100):
            intensity[j][i] = -int(row[i])

        # intensity[counter] = row
        # print(f"row at 0: {row[0]}")
        j=j+1
        print(row) # Process each row as needed

pp = plt.pcolormesh(x, y, intensity, cmap='gray', norm="linear", vmax="32000", vmin="-32000")
plt.colorbar()  # need a colorbar to show the intensity scale
plt.show()

# file_path = "image.raw"  # Replace with the actual path to your file

# try:
#     with open(file_path, 'r') as file:
#         for line in file:
#             # Each 'line' variable will contain one line from the file
#             # including the newline character at the end (e.g., '\n')
#             if line.startswith("DATA::"):
#                 new_string = line.replace("DATA::: ", "")

#                 print(new_string.strip())  # .strip() removes leading/trailing whitespace, including '\n'
# except FileNotFoundError:
#     print(f"Error: The file '{file_path}' was not found.")
# except Exception as e:
#     print(f"An error occurred: {e}")