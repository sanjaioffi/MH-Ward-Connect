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

# Example usage:
# Define the polygon using a list of latitude-longitude pairs
polygon_coordinates = [    (9.933529503806852, 78.067547276781),
    (9.915156704561568, 78.07835690230058),
    (9.893442068699429, 78.06659348629313),
    (9.897618071784379, 78.09393548025457),
    (9.923194931065225, 78.09414743369615),
    (9.927892504577699, 78.09594903794851),
    (9.929980293391452, 78.09605501467018),
    (9.933529503806852, 78.067547276781),]

# Define the point you want to check
point_to_check = (9.930964593541809, 78.06885838508606)


# Check if the point is inside the polygon
result = is_point_inside_polygon(point_to_check, polygon_coordinates)
print(result)
