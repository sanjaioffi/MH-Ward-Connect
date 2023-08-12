def is_point_inside_polygon(point, polygon):
    # Get the latitude and longitude of the point
    lat, lon = point

    # Initialize variables for the number of vertices and the status of being inside the polygon
    num_vertices = len(polygon)
    is_inside = False

    # Iterate through each edge of the polygon
    for i in range(num_vertices):
        lat1, lon1 = polygon[i]
        lat2, lon2 = polygon[(i + 1) % num_vertices]

        # Check if the point's latitude is within the latitude range of the edge
        if min(lat1, lat2) < lat <= max(lat1, lat2):

            # Calculate the longitude at which the ray intersects the edge
            lon_intersect = (lon1 + (lat - lat1) * (lon2 - lon1) / (lat2 - lat1))

            # If the point's longitude is on the left side of the intersecting longitude,
            # it is inside the polygon
            if lon <= lon_intersect:
                is_inside = not is_inside

    return is_inside








def find_polygon_for_user(user_location, polygons):
    # Iterate through each polygon and check if the user's location is inside it
    for i, polygon in enumerate(polygons):
        if is_point_inside_polygon(user_location, polygon):
            return i  # Return the index of the polygon the user is in

    return None  # Return None if the user's location is not inside any polygon

# Example usage:
# Define the polygons using a list of lists of latitude-longitude pairs
polygon1 = [(lat1, lon1), (lat2, lon2), (lat3, lon3), ...]
polygon2 = [(lat4, lon4), (lat5, lon5), (lat6, lon6), ...]
# ... and so on for other polygons

polygons_list = [polygon1, polygon2, ...]  # Add all your polygons to this list

# Get the user's current location
user_location = (user_lat, user_lon)

# Find the polygon the user is in
result = find_polygon_for_user(user_location, polygons_list)

if result is not None:
    print(f"The user is inside Polygon {result + 1}.")
else:
    print("The user is not inside any polygon.")
