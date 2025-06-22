#Requires AutoHotkey v2.0
#NoTrayIcon
SetWorkingDir A_ScriptDir

Suspend 1

#SuspendExempt
CapsLock::Suspend
#SuspendExempt False

A::SendText Chr(0x1D00)
B::SendText Chr(0x0299)
C::SendText Chr(0x1D04)
D::SendText Chr(0x1D05)
E::SendText Chr(0x1D07)
F::SendText Chr(0xA730)
G::SendText Chr(0x0262)
H::SendText Chr(0x029C)
I::SendText Chr(0x026A)
J::SendText Chr(0x1D0A)
K::SendText Chr(0x1D0B)
L::SendText Chr(0x029F)
M::SendText Chr(0x1D0D)
N::SendText Chr(0x0274)
O::SendText Chr(0x1D0F)
P::SendText Chr(0x1D18)
Q::SendText Chr(0x01EB)
R::SendText Chr(0x0280)
S::SendText Chr(0xA731)
T::SendText Chr(0x1D1B)
U::SendText Chr(0x1D1C)
V::SendText Chr(0x1D20)
W::SendText Chr(0x1D21)
; X::SendText Chr(0x0078)
Y::SendText Chr(0x028F)
Z::SendText Chr(0x1D22)
