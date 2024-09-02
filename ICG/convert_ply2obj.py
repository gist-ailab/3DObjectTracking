import trimesh
import os
import shutil

# Define the paths to the input PLY file and the desired output directory
ply_file_path = '/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/data/ycbv/models/obj_000002.ply'
original_png_file_path = '/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/data/ycbv/models/obj_000002.png'
output_dir = '/home/demo-ur5/heeseon/src/3DObjectTracking/ICG/data/ycbv/models_obj/'

# Extract the base name (without extension) from the PLY file path
base_name = os.path.splitext(os.path.basename(ply_file_path))[0]

# Define the paths for the output OBJ, MTL, and PNG files
obj_file_path = os.path.join(output_dir, f'{base_name}.obj')
mtl_file_path = os.path.join(output_dir, f'{base_name}.mtl')
png_file_path = os.path.join(output_dir, f'{base_name}.png')

# Copy the original PNG to the new path
shutil.copyfile(original_png_file_path, png_file_path)

# Load the PLY file
mesh = trimesh.load(ply_file_path)

# Export the mesh as OBJ
mesh.export(obj_file_path)

# Create the MTL file for the texture
mtl_content = f"""
newmtl material_0
Ka 1.000000 1.000000 1.000000
Kd 1.000000 1.000000 1.000000
Ks 0.000000 0.000000 0.000000
Tr 1.000000
illum 1
Ns 0.000000
map_Kd {os.path.basename(png_file_path)}
"""

with open(mtl_file_path, 'w') as mtl_file:
    mtl_file.write(mtl_content)

# Update the OBJ file to reference the MTL file
with open(obj_file_path, 'r') as obj_file:
    obj_data = obj_file.read()

obj_data = obj_data.replace('usemtl None', 'usemtl material_0')
obj_data = f"mtllib {os.path.basename(mtl_file_path)}\n" + obj_data

with open(obj_file_path, 'w') as obj_file:
    obj_file.write(obj_data)

print(f"OBJ file saved to {obj_file_path}")
print(f"MTL file saved to {mtl_file_path}")
print(f"PNG file saved to {png_file_path}")
