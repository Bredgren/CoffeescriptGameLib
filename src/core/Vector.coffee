
# Represents a vector or point in 2D space. Should be treated as immutable.
# Note that it is recommened that you use rounded values when drawing.
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

  # Returns a new Vector equal to the sum of this and other.
  #
  # @param [Vector] other The Vector to add to this one
  # @return [Vector] The Vector resulting from this + other
  plus: (other) ->
    return new Vector(@x() + other.x(), @y() + other.y())

  # Returns a new Vector equal to the difference between this and other.
  #
  # @param [Vector] other The Vector to subtract to this one
  # @return [Vector] The Vector resulting from this - other
  minus: (other) ->
    return new Vector(@x() - other.x(), @y() - other.y())

  # Returns a new Vector equal to this one scaled by the given amount.
  #
  # @param [number] amount Scales both this Vector's x and y by the given amount
  # @return [Vector] The new scaled Vector
  scale: (amount) ->
    return new Vector(@x() * amount, @y() * amount)

  # Returns a new Vector equal to this one scaled by the given amount.
  #
  # @param [Vector] amount Scales this Vector's x and y by amounts x and y.
  scaleVector: (amount) ->
    return new Vector(@x() * amount.x(), @y() * amount.y())

  # @return [number] This Vector's length
  length: () ->
    return Math.sqrt(@x() * @x() + @y() * @y())

  # Normalizes this Vector.
  #
  # @return [Vector] A new Vector in the same direction but with length 1
  normalized: () ->
    l = @length()
    return new Vector(@x() / l, @y() / l)

  # @return [string] A string representation this Vector
  toString: () ->
    return "(#{@x()}, #{@y()})"
