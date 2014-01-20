
# Represents a vector or point in 2D space. Should be treated as immutable.
class Vector
  # @const The zero vector
  ZERO_VECTOR: new Vector(0, 0)

  # @param [number] x The x coordinate of the Vector
  # @param [number] y The y coordinate of the Vector
  constructor: (x, y) ->
    @_x = x
    @_y = y

  # @return [number] The x coordinate of this Vector
  x: () ->
    return @_x

  # @return [number] The y coordinate of this Vector
  y: () ->
    return @_y