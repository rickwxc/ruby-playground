# test class
class A
  def send
    p 'local send of a'
  end

  def prt
    p 'I am A'
  end

  def call_send
    __send__ :prt
  end

  private

  def inner_prt
    p 'I am inner A'
  end
end

a = A.new

a.send

a.public_send :prt

a.call_send

a.__send__ :inner_prt

a.public_send :inner_prt
