.class synthetic Lio/bidmachine/protobuf/rendering/Rendering$2;
.super Ljava/lang/Object;
.source "Rendering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$AdaptiveAnimation$Style$StyleCase:[I

.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Background$SourceOneofCase:[I

.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Color$SourceOnofCase:[I

.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Placeholder$SourceOneofCase:[I

.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$Payload$PayloadOneofCase:[I

.field static final synthetic $SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$AdaptiveAnimation$Style$StyleCase:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;->FADE:Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$AdaptiveAnimation$Style$StyleCase:[I

    .line 21
    .line 22
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;->SLIDE:Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$AdaptiveAnimation$Style$StyleCase:[I

    .line 32
    .line 33
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;->STYLE_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style$StyleCase;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v3, v3

    .line 46
    new-array v3, v3, [I

    .line 47
    .line 48
    sput-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Background$SourceOneofCase:[I

    .line 49
    .line 50
    :try_start_3
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;->COLOR:Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    .line 58
    :catch_3
    :try_start_4
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Background$SourceOneofCase:[I

    .line 59
    .line 60
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;->IMAGE:Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    :try_start_5
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Background$SourceOneofCase:[I

    .line 69
    .line 70
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;->SOURCEONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$Background$SourceOneofCase;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 77
    .line 78
    :catch_5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v3, v3

    .line 83
    new-array v3, v3, [I

    .line 84
    .line 85
    sput-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Placeholder$SourceOneofCase:[I

    .line 86
    .line 87
    :try_start_6
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;->NAME:Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 94
    .line 95
    :catch_6
    :try_start_7
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Placeholder$SourceOneofCase:[I

    .line 96
    .line 97
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;->COLOR:Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 104
    .line 105
    :catch_7
    :try_start_8
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Placeholder$SourceOneofCase:[I

    .line 106
    .line 107
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;->IMAGE:Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 114
    .line 115
    :catch_8
    const/4 v3, 0x4

    .line 116
    :try_start_9
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Placeholder$SourceOneofCase:[I

    .line 117
    .line 118
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;->SOURCEONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$Placeholder$SourceOneofCase;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 125
    .line 126
    :catch_9
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    array-length v4, v4

    .line 131
    new-array v4, v4, [I

    .line 132
    .line 133
    sput-object v4, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I

    .line 134
    .line 135
    :try_start_a
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->UNKNOWN:Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    aput v1, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 142
    .line 143
    :catch_a
    :try_start_b
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I

    .line 144
    .line 145
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->URL:Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    aput v0, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 152
    .line 153
    :catch_b
    :try_start_c
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I

    .line 154
    .line 155
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->BASE64:Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    aput v2, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 162
    .line 163
    :catch_c
    :try_start_d
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I

    .line 164
    .line 165
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->PAYLOAD:Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    aput v3, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 172
    .line 173
    :catch_d
    :try_start_e
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$SourceOneofCase:[I

    .line 174
    .line 175
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->SOURCEONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    const/4 v5, 0x5

    .line 182
    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 183
    .line 184
    :catch_e
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    array-length v3, v3

    .line 189
    new-array v3, v3, [I

    .line 190
    .line 191
    sput-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$Payload$PayloadOneofCase:[I

    .line 192
    .line 193
    :try_start_f
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;->XML:Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;

    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    aput v1, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 200
    .line 201
    :catch_f
    :try_start_10
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$Payload$PayloadOneofCase:[I

    .line 202
    .line 203
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;->HTML:Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    aput v0, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 210
    .line 211
    :catch_10
    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Resource$Payload$PayloadOneofCase:[I

    .line 212
    .line 213
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;->PAYLOADONEOF_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$PayloadOneofCase;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    aput v2, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 220
    .line 221
    :catch_11
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    array-length v3, v3

    .line 226
    new-array v3, v3, [I

    .line 227
    .line 228
    sput-object v3, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Color$SourceOnofCase:[I

    .line 229
    .line 230
    :try_start_12
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;->COLOR:Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;

    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    aput v1, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 237
    .line 238
    :catch_12
    :try_start_13
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Color$SourceOnofCase:[I

    .line 239
    .line 240
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;->GRADIENT:Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    aput v0, v1, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 247
    .line 248
    :catch_13
    :try_start_14
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$2;->$SwitchMap$io$bidmachine$protobuf$rendering$Rendering$Color$SourceOnofCase:[I

    .line 249
    .line 250
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;->SOURCEONOF_NOT_SET:Lio/bidmachine/protobuf/rendering/Rendering$Color$SourceOnofCase;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 257
    .line 258
    :catch_14
    return-void
.end method
