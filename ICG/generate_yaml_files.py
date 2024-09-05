import os
import yaml

# List of body names
body_names = [
    "002_master_chef_can", "004_sugar_box",
    "005_tomato_soup_can", "007_tuna_fish_can",
    "010_potted_meat_can", "021_bleach_cleanser", "024_bowl",
    "025_mug", "051_large_clamp", "052_extra_large_clamp",
    "061_foam_brick"
]
# body_names = [
#     "002_master_chef_can", "003_cracker_box", "004_sugar_box",
#     "005_tomato_soup_can", "006_mustard_bottle", "007_tuna_fish_can",
#     "008_pudding_box", "009_gelatin_box", "010_potted_meat_can",
#     "011_banana", "019_pitcher_base", "021_bleach_cleanser", "024_bowl",
#     "025_mug", "035_power_drill", "036_wood_block", "037_scissors",
#     "040_large_marker", "051_large_clamp", "052_extra_large_clamp",
#     "061_foam_brick"
# ]

# Directory to save YAML files
output_directory = "external/models"

# Template data for YAML files
body_template = {
    'geometry_path': "INFER_FROM_NAME",
    'geometry_unit_in_meter': 1.0,
    'geometry_counterclockwise': 1,
    'geometry_enable_culling': 1,
    'geometry2body_pose': {
        'rows': 4,
        'cols': 4,
        'dt': 'd',
        'data': [1.0, 0.0, 0.0, 0.0,
                 0.0, 1.0, 0.0, 0.0,
                 0.0, 0.0, 1.0, 0.0,
                 0.0, 0.0, 0.0, 1.0]
    }
}

detector_template = {
    'body2world_pose': {
        'rows': 4,
        'cols': 4,
        'dt': 'd',
        'data': [0.607674, 0.786584, -0.10962, -0.081876,
                 0.408914, -0.428214, -0.805868, -0.00546736,
                 -0.680823, 0.444881, -0.58186, 0.618302,
                 0.0, 0.0, 0.0, 1.0]
    }
}

model_template = {
    'model_path': "INFER_FROM_NAME"
}

# Function to write YAML file
def write_yaml(file_path, data):
    with open(file_path, 'w') as file:
        yaml.dump(data, file, default_flow_style=False)

# Generate YAML files for each body name
for body_name in body_names:
    # Body YAML file
    body_yaml_path = os.path.join(output_directory, f"{body_name}.yaml")
    body_data = body_template.copy()
    write_yaml(body_yaml_path, body_data)

    # Detector YAML file
    detector_yaml_path = os.path.join(output_directory, f"{body_name}_manual_detector.yaml")
    detector_data = detector_template.copy()
    write_yaml(detector_yaml_path, detector_data)

    # Model YAML file
    model_yaml_path = os.path.join(output_directory, f"{body_name}_default_model.yaml")
    model_data = model_template.copy()
    write_yaml(model_yaml_path, model_data)

    print(f"Generated YAML files for {body_name}")

print("All YAML files have been generated successfully.")
