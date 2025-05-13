[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| 超必殺技 |-----------------------------------------------------------------
[Command]
name = "6246aa"
command = ~D, B, F, x+y
time = 20
[Command]
name = "6246aa"
command = ~D, B, F, x+z
time = 20
[Command]
name = "6246aa"
command = ~D, B, F, y+z
time = 20

[Command]
name = "236aa"
command = ~D,DF,F,x+y
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,y+z
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,x+z
time = 16
[Command]
name = "236b"
command = ~D,DF,F,b
time = 16

[Command]
name = "214aa"
command = ~D,DB,B,x+y
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,y+z
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,x+z
time = 16
[Command]
name = "214b"
command = ~D,DB,B,b
time = 16

;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "623x"
command = ~F,D,DF,x
time = 12
[Command]
name = "623x"
command = ~F,D,DF,~x
time = 12

[Command]
name = "623y"
command = ~F,D,DF,y
time = 12
[Command]
name = "623y"
command = ~F,D,DF,~y
time = 12

[Command]
name = "623z"
command = ~F,D,DF,z
time = 12
[Command]
name = "623z"
command = ~F,D,DF,~z
time = 12

[Command]
name = "236x"
command = ~D,DF,F,x
time = 12
[Command]
name = "236x"
command = ~D,DF,F,~x
time = 12

[Command]
name = "236y"
command = ~D,DF,F,y
time = 12
[Command]
name = "236y"
command = ~D,DF,F,~y
time = 12

[Command]
name = "236z"
command = ~D,DF,F,z
time = 12
[Command]
name = "236z"
command = ~D,DF,F,~z
time = 12

[Command]
name = "236a"
command = ~D,DF,F,a
time = 12
[Command]
name = "236a"
command = ~D,DF,F,~a
time = 12

[Command]
name = "22x"
command = ~D, D, x
time = 15
[Command]
name = "22y"
command = ~D, D, y
time = 15
[Command]
name = "22z"
command = ~D, D, z
time = 15

[Command]
name = "ExJump"
command = D, U
time = 12

[Command]
name = "ExJump"
command = D, UF
time = 12

[Command]
name = "ExJump"
command = D, UB
time = 12

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "AirDush" ;必須コマンド名
command = x+y
time = 1
[Command]
name = "AirDush" ;必須コマンド名
command = y+z
time = 1
[Command]
name = "AirDush" ;必須コマンド名
command = x+z
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------

[Command]
name = "holdx"	   ;必須コマンド名
command = /x
time = 1

[Command]
name = "holdy"	   ;必須コマンド名
command = /y
time = 1

[Command]
name = "holdz"	   ;必須コマンド名
command = /z
time = 1

[Command]
name = "holda"	   ;必須コマンド名
command = /a
time = 1

[Command]
name = "holdb"	   ;必須コマンド名
command = /b
time = 1

[Command]
name = "holds"
command = /s
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
;こっからCPU

;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = ctrl
trigger1 = numhelper(50000)
Trigger1 = inguarddist || ((helper(50000),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Trigger1 = 1


;シャボンレンズ
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 3000
triggerall = var(16)
trigger1 = ctrl || (stateno = [120,149])
trigger1 = p2statetype != L
trigger1 = random < 50
value = 3000

;波紋の片鱗
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = [120,149])
trigger1 = p2movetype = A && p2bodydist x < 45 && enemynear,ctrl = 0
trigger1 = p2bodydist y > -45
trigger1 = random < 40
value = 3100

;波紋蹴り
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = [120,149])
trigger1 = (p2movetype = A || p2statetype = A) && p2bodydist x < 50 && enemynear,ctrl = 0
trigger1 = random < 60
value = 1300

;シャボンカッター
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = [120,149])
trigger1 = !InGuardDist
trigger1 = p2bodydist x > 120
trigger1 = random < 50
value = 1000

;シャボンカッターグライディン
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = [120,149])
trigger1 = !InGuardDist
trigger1 = p2bodydist x > 120
trigger1 = random < 30
value = 1100

;シャボンレンズ
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(18) = 0
trigger1 = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x > 30 || p2statetype = L
trigger1 = random < 30 + (p2statetype = L)*30
value = 1200

;5S
[State -1, 2100]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = [120,149])
trigger1 = !InGuardDist
trigger1 = p2bodydist x = [60, 150]
trigger1 = random < 30
value = 2100

;2S
[State -1, 1200]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x >= 150
trigger1 = random < 30
value = 2300

;JS
[State -1, 1200]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist y = [0, 80]
trigger1 = (ctrl || (stateno = [120,149])) && random < 50 && p2movetype != H
trigger2 = Stateno = 300 && Anim = 301 && Time >= 9 && random < 80 && vel y > 2
value = 2200

;6b
[State -1, 6b]
type = ChangeState
value = 211
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist y > -65
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x = [60, 110]
trigger1 = !InGuardDist
trigger1 = random < 32
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 410) && var(4)
trigger2 = random < 40

[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist y > -105
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x < 50
trigger1 = random < 80

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist y > -95
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x = [30, 90]
trigger1 = random < 50

[State -1, 屈a]
type = ChangeState
value = 400
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist y > -45
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x < 45
trigger1 = random < 30 + (enemynear,gethitvar(hittime) > 5)* 200

[State -1, 屈c]
type = ChangeState
value = 410
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist y > -45
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x = [40, 80]
trigger1 = random < 30

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = random < 40
trigger1 = p2bodydist x = [50, 95]

[State -1, assault]
type = ChangeState
value = 700
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2bodydist x > 70
trigger1 = random < 25
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410||stateno = 420) && var(4)
trigger2 = moveguarded = 1
trigger2 = random < 180

;投げ
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = p2dist x < 45
trigger1 = random < 60
value = 800

;特殊ジャンプ
[State -1, 1000]
type = ChangeState
triggerall = AILevel && roundstate = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = (ctrl || (stateno = [120,149]))
trigger1 = !InGuardDist
trigger1 = random < 30
trigger2 = (stateno = 211 || stateno = 420) && var(4)
trigger2 = random < 30
value = 300

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = AILevel && roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || (stateno = [120,149]))
trigger1 = random < 40
trigger1 = p2bodydist x < 40
trigger2 = random < 23
trigger2 = p2bodydist x = [40, 180]

[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = AILevel && roundstate = 2
triggerall = statetype = A
triggerall = random < 240 && p2bodydist x < 100 + (p2movetype=H)*24 && p2bodydist y > -40 - (p2movetype=H)*24
trigger1 = (ctrl || (stateno = [120,149]))
trigger2 = Stateno = 300 && Anim = 301 && Time >= 9 && random < 80

[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = AILevel && roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 700 && time = 22

[State -1, ジャンプ8c2]
type = ChangeState
value = 625
triggerall = AILevel
triggerall = statetype = A
trigger1 = !var(8)
trigger1 = Stateno = 620 && var(4)
trigger1 = AnimElemTime(4) < 0
trigger1 = MoveHit = 1

;==============================================================================
; コンボ
;==============================================================================

;6c
[State -1, 6c]
type = ChangeState
value = 221
triggerall = AILevel
triggerall = statetype != A
trigger1 = (p2bodydist x = [30, 60]) || (stateno = 220)
trigger1 = (stateno = 220 || stateno = 210 || stateno = 410) && var(4)
trigger1 = MoveHit = 1

;J追撃
[State -1, 1000]
type = ChangeState
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 221 && !animtime
trigger1 = MoveHit
value = 40

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = statetype != A
trigger1 = (stateno = 200 || stateno = 400) && var(4)
trigger1 = MoveContact = 1

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = statetype != A
trigger1 = (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410) && var(4)
trigger1 = MoveContact = 1

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = statetype != A
trigger1 = (stateno = 210 || stateno = 410) && var(4)
trigger1 = MoveHit = 1


[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = statetype = A
trigger1 = (stateno = 600) && var(4)
trigger1 = MoveHit = 1

[State -1, ジャンプc]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = statetype = A
trigger1 = !var(8)
trigger1 = (stateno = 600 || stateno = 610) && var(4)
trigger1 = MoveHit = 1

[State -1, ジャンプ8c2]
type = ChangeState
value = 625
triggerall = AILevel
triggerall = statetype = A
trigger1 = !var(8)
trigger1 = Stateno = 620 && var(4)
trigger1 = AnimElemTime(4) < 0
trigger1 = MoveHit = 1

;奥義・波紋シャボンランチャー(Air)
[State -1, 1000]
type = ChangeState
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = (stateno = 625) && var(4)
trigger1 = MoveHit = 1
trigger2 = stateno = 1300 && var(4)
trigger2 = MoveHit && p2bodydist Y > 45
value = 3202


;CPUここまで
;==============================================================================
; 超必殺技
;==============================================================================
;GHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "c"
triggerall = power >= 3000
triggerall = var(16)
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1200 || stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 3000

;波紋の片鱗
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236aa" || command = "236b"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1200 || stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 3100

;奥義・波紋シャボンランチャー
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "214aa" || command = "214b"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 1000 || stateno = 1100 || stateno = 1200 || stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 3200

;奥義・波紋シャボンランチャー(Air)
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "214aa" || command = "214b"
triggerall = power >= 1000
triggerall = !var(8)
trigger1 = ctrl
trigger2 = (stateno = 600||stateno = 610||stateno = 620 || stateno = 625) && var(4)
trigger3 = (stateno = 1300) && var(4)
trigger4 = (stateno = 2200) && var(4)
trigger5 = Stateno = 300 && Anim = 301 && Time >= 9
value = 3202

;==============================================================================
; 必殺技
;==============================================================================
;波紋蹴り
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "623x" || command = "623y" || command = "623z"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 1300

;シャボンカッター
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236x" || command = "236y"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 1000

;シャボンレンズ
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "22x" || command = "22y" || command = "22z"
triggerall = var(18) = 0
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 1200

;シャボンカッターグライディン
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236z"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = (stateno = 2000 || stateno = 2101) && var(4)
trigger4 = stateno = 52 && var(8) > 1
value = 1100

;==============================================================================
; 移動関連
;==============================================================================
[State -1, 走る]
type = ChangeState
triggerall = AILevel = 0
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
value = 100

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = AILevel = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "BB"

;==============================================================================
; S技
;==============================================================================
[State -1, assault]
type = ChangeState
value = 700
triggerall = command = "holdfwd"
triggerall = (command = "x" && command = "y") || (command = "b")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)

;5S
[State -1, 1200]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 52 && var(8) > 1
value = 2100

;2S
[State -1, 1200]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 52 && var(8) > 1
value = 2300

;JS
[State -1, 1200]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "b"
triggerall = !var(8)
trigger1 = ctrl
trigger2 = (stateno = [600, 699]) && var(4)
trigger3 = Stateno = 300 && Anim = 301 && Time >= 9
value = 2200

;==============================================================================
; 特殊技
;==============================================================================
;投げ
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "a"
trigger1 = ctrl
value = 800

;GC
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
trigger1 = time > 0
value = 720

;特殊ジャンプ
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "ExJump"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
value = 300

;6b
[State -1, 6b]
type = ChangeState
value = 211
triggerall = AILevel = 0
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420) && var(4)

;6c
[State -1, 6c]
type = ChangeState
value = 221
triggerall = AILevel = 0
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 210 || stateno = 410 || stateno = 220) && var(4)

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && var(4)

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && var(4)

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = AILevel = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410) && var(4)

[State -1, 屈c]
type = ChangeState
value = 400
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 屈c]
type = ChangeState
value = 410
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && var(4)

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = AILevel = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410) && var(4)

[State -1, ジャンプa]
type = ChangeState
value = 600
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 300 && Anim = 301 && Time >= 9

[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = statetype = A
trigger1 = command = "y"
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = var(8) = 0
trigger2 = stateno = 600 && var(4)
trigger3 = command = "y"
trigger3 = Stateno = 300 && Anim = 301 && Time >= 9
trigger4 = (command = "y" || command = "holdy") || ((command = "x" || command = "holdx") && stateno = 700)
trigger4 = stateno = 700 && time >= 20

[State -1, ジャンプc]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = statetype = A
trigger1 = command = "z"
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = var(8) = 0
trigger2 = (stateno = [600,610]) && var(4)
trigger3 = command = "z"
trigger3 = Stateno = 300 && Anim = 301 && Time >= 9
trigger4 = (command = "z" || command = "holdz")
trigger4 = stateno = 700 && time >= 20

[State -1, ジャンプ8c2]
type = ChangeState
value = 625
triggerall = AILevel = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = var(8) = 0
trigger1 = Stateno = 620 && var(4)
trigger1 = AnimElemTime(4) < 0

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = AILevel = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
