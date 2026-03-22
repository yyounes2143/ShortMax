.class public Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;
.super Ljava/lang/Object;
.source "ConfigItemFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigItemFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isCommonPlayerOption(I)Z
    .locals 1

    .line 1
    const v0, 0x9c40

    .line 2
    .line 3
    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    const v0, 0xc350

    .line 7
    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public createFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->isCommonPlayerOption(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    packed-switch p1, :pswitch_data_1

    .line 23
    .line 24
    .line 25
    packed-switch p1, :pswitch_data_2

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "unknown option key: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ", value: "

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "ConfigItemFactory"

    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/16 v2, 0x485

    .line 69
    .line 70
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/16 v2, 0x484

    .line 82
    .line 83
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const/16 v2, 0x483

    .line 95
    .line 96
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :pswitch_3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 102
    .line 103
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const/16 v2, 0x482

    .line 108
    .line 109
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :pswitch_4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/16 v2, 0x481

    .line 121
    .line 122
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :pswitch_5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 128
    .line 129
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const/16 v2, 0x480

    .line 134
    .line 135
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :pswitch_6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 140
    .line 141
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const/16 v2, 0x47f

    .line 146
    .line 147
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :pswitch_7
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    move-object p1, v0

    .line 161
    goto :goto_0

    .line 162
    :pswitch_8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 163
    .line 164
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const/16 v2, 0x286

    .line 169
    .line 170
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :pswitch_9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 175
    .line 176
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const/16 v2, 0x284

    .line 181
    .line 182
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 187
    .line 188
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const/16 v2, 0x285

    .line 193
    .line 194
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 199
    .line 200
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    const/16 v2, 0x132

    .line 205
    .line 206
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 211
    .line 212
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    const/16 v2, 0x131

    .line 217
    .line 218
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :pswitch_d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 223
    .line 224
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    const/16 v2, 0x130

    .line 229
    .line 230
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 235
    .line 236
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    const/16 v2, 0x12f

    .line 241
    .line 242
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    :goto_0
    return-object p1

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_1
    .packed-switch 0x158
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_2
    .packed-switch 0x20f
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public createIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->isCommonPlayerOption(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    if-eqz p1, :cond_10

    .line 20
    .line 21
    if-eq p1, v1, :cond_f

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq p1, v2, :cond_e

    .line 25
    .line 26
    const/16 v2, 0xa0

    .line 27
    .line 28
    if-eq p1, v2, :cond_d

    .line 29
    .line 30
    const/16 v2, 0xa1

    .line 31
    .line 32
    if-eq p1, v2, :cond_d

    .line 33
    .line 34
    const/16 v2, 0xb7

    .line 35
    .line 36
    if-eq p1, v2, :cond_c

    .line 37
    .line 38
    const/16 v2, 0xb8

    .line 39
    .line 40
    if-eq p1, v2, :cond_b

    .line 41
    .line 42
    const/16 v3, 0xcf

    .line 43
    .line 44
    if-eq p1, v3, :cond_8

    .line 45
    .line 46
    const/16 v3, 0xd0

    .line 47
    .line 48
    if-eq p1, v3, :cond_7

    .line 49
    .line 50
    const/16 v4, 0x56

    .line 51
    .line 52
    const/16 v5, 0x3e8

    .line 53
    .line 54
    const/16 v6, 0xfa6

    .line 55
    .line 56
    const-string v7, " value:"

    .line 57
    .line 58
    const-string v8, "set int option failed key:"

    .line 59
    .line 60
    const-string v9, "ConfigItemFactory"

    .line 61
    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    packed-switch p1, :pswitch_data_1

    .line 69
    .line 70
    .line 71
    packed-switch p1, :pswitch_data_2

    .line 72
    .line 73
    .line 74
    packed-switch p1, :pswitch_data_3

    .line 75
    .line 76
    .line 77
    packed-switch p1, :pswitch_data_4

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "unknown option key: "

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ", value: "

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v9, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :pswitch_0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 112
    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const/16 v0, 0x61

    .line 118
    .line 119
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :pswitch_1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 125
    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    const/16 v0, 0x58

    .line 131
    .line 132
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :pswitch_2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 138
    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const/16 v0, 0xc7

    .line 144
    .line 145
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :pswitch_3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 151
    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const/16 v0, 0xc3

    .line 157
    .line 158
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :pswitch_4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 164
    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    const/16 v0, 0x86

    .line 170
    .line 171
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :pswitch_5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 177
    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    const/16 v0, 0x60

    .line 183
    .line 184
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :pswitch_6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    const/16 v0, 0x6e

    .line 196
    .line 197
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :pswitch_7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 203
    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const/16 v0, 0xd1

    .line 209
    .line 210
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :pswitch_8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 216
    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-direct {p1, v3, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_2

    .line 225
    .line 226
    :pswitch_9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 227
    .line 228
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    const/16 v0, 0xce

    .line 233
    .line 234
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :pswitch_a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 240
    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    const/16 v0, 0xc1

    .line 246
    .line 247
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :pswitch_b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 253
    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    const/16 v0, 0x53

    .line 259
    .line 260
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :sswitch_0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 266
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    const/16 v0, 0xfaa

    .line 272
    .line 273
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :sswitch_1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 279
    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    const/16 v0, 0xfa9

    .line 285
    .line 286
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :sswitch_2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 292
    .line 293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    const/16 v0, 0xfa8

    .line 298
    .line 299
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :sswitch_3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 305
    .line 306
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const/16 v0, 0x245

    .line 311
    .line 312
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_2

    .line 316
    .line 317
    :sswitch_4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 318
    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-direct {p1, v6, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :sswitch_5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 329
    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    invoke-direct {p1, v6, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :sswitch_6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 340
    .line 341
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    const/16 v0, 0xfa5

    .line 346
    .line 347
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :sswitch_7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 353
    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    const/16 v0, 0xfa3

    .line 359
    .line 360
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :sswitch_8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 366
    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    const/16 v0, 0xfa2

    .line 372
    .line 373
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :sswitch_9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 379
    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    const/16 v0, 0xfa1

    .line 385
    .line 386
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :sswitch_a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 392
    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    const v0, 0xa441

    .line 398
    .line 399
    .line 400
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :sswitch_b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 406
    .line 407
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    const v2, 0xa42a

    .line 412
    .line 413
    .line 414
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :sswitch_c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 420
    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    const v2, 0xc545

    .line 426
    .line 427
    .line 428
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :sswitch_d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 434
    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    const/16 v0, 0x76e

    .line 440
    .line 441
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_2

    .line 445
    .line 446
    :sswitch_e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 447
    .line 448
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    const/16 v0, 0x76d

    .line 453
    .line 454
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :sswitch_f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 460
    .line 461
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    const/16 v0, 0x76c

    .line 466
    .line 467
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_2

    .line 471
    .line 472
    :sswitch_10
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 473
    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    const/16 v2, 0x70a

    .line 479
    .line 480
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :sswitch_11
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 486
    .line 487
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    const/16 v0, 0x708

    .line 492
    .line 493
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_2

    .line 497
    .line 498
    :sswitch_12
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 499
    .line 500
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    const/16 v0, 0x1e0

    .line 505
    .line 506
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :sswitch_13
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 512
    .line 513
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    const v0, 0xa420

    .line 518
    .line 519
    .line 520
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_2

    .line 524
    .line 525
    :sswitch_14
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 526
    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    const v0, 0xa415

    .line 532
    .line 533
    .line 534
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :sswitch_15
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 540
    .line 541
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object p2

    .line 545
    const/16 v0, 0x43e

    .line 546
    .line 547
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_2

    .line 551
    .line 552
    :sswitch_16
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 553
    .line 554
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object p2

    .line 558
    const/16 v0, 0x44a

    .line 559
    .line 560
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_2

    .line 564
    .line 565
    :sswitch_17
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 566
    .line 567
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    const/16 v0, 0x43c

    .line 572
    .line 573
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 574
    .line 575
    .line 576
    goto/16 :goto_2

    .line 577
    .line 578
    :sswitch_18
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 579
    .line 580
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    const/16 v0, 0x448

    .line 585
    .line 586
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_2

    .line 590
    .line 591
    :sswitch_19
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 592
    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object p2

    .line 597
    const/16 v0, 0x446

    .line 598
    .line 599
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_2

    .line 603
    .line 604
    :sswitch_1a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 605
    .line 606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object p2

    .line 610
    const/16 v0, 0x2f4

    .line 611
    .line 612
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_2

    .line 616
    .line 617
    :sswitch_1b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 618
    .line 619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object p2

    .line 623
    const/16 v0, 0x437

    .line 624
    .line 625
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_2

    .line 629
    .line 630
    :sswitch_1c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 631
    .line 632
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    .line 634
    .line 635
    move-result-object p2

    .line 636
    const/16 v0, 0x434

    .line 637
    .line 638
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_2

    .line 642
    .line 643
    :sswitch_1d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 644
    .line 645
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object p2

    .line 649
    const/16 v0, 0x433

    .line 650
    .line 651
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_2

    .line 655
    .line 656
    :sswitch_1e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 657
    .line 658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 659
    .line 660
    .line 661
    move-result-object p2

    .line 662
    const/16 v0, 0x432

    .line 663
    .line 664
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_2

    .line 668
    .line 669
    :sswitch_1f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 670
    .line 671
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object p2

    .line 675
    const/16 v0, 0x430

    .line 676
    .line 677
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 678
    .line 679
    .line 680
    goto/16 :goto_2

    .line 681
    .line 682
    :sswitch_20
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 683
    .line 684
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object p2

    .line 688
    const/16 v0, 0x42f

    .line 689
    .line 690
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_2

    .line 694
    .line 695
    :sswitch_21
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 696
    .line 697
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 698
    .line 699
    .line 700
    move-result-object p2

    .line 701
    const/16 v0, 0x41c

    .line 702
    .line 703
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_2

    .line 707
    .line 708
    :sswitch_22
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 709
    .line 710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object p2

    .line 714
    const/16 v0, 0x41a

    .line 715
    .line 716
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :sswitch_23
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 722
    .line 723
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 724
    .line 725
    .line 726
    move-result-object p2

    .line 727
    const/16 v0, 0x54b

    .line 728
    .line 729
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_2

    .line 733
    .line 734
    :sswitch_24
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 735
    .line 736
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object p2

    .line 740
    const/16 v0, 0x544

    .line 741
    .line 742
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_2

    .line 746
    .line 747
    :sswitch_25
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 748
    .line 749
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 750
    .line 751
    .line 752
    move-result-object p2

    .line 753
    const/16 v0, 0x543

    .line 754
    .line 755
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_2

    .line 759
    .line 760
    :sswitch_26
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 761
    .line 762
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 763
    .line 764
    .line 765
    move-result-object p2

    .line 766
    const/16 v0, 0x542

    .line 767
    .line 768
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_2

    .line 772
    .line 773
    :sswitch_27
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 774
    .line 775
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    const/16 v0, 0x541

    .line 780
    .line 781
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_2

    .line 785
    .line 786
    :sswitch_28
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 787
    .line 788
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 789
    .line 790
    .line 791
    move-result-object p2

    .line 792
    const/16 v0, 0x540

    .line 793
    .line 794
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 795
    .line 796
    .line 797
    goto/16 :goto_2

    .line 798
    .line 799
    :sswitch_29
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 800
    .line 801
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object p2

    .line 805
    const/16 v0, 0x53a

    .line 806
    .line 807
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_2

    .line 811
    .line 812
    :sswitch_2a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 813
    .line 814
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 815
    .line 816
    .line 817
    move-result-object p2

    .line 818
    const/16 v0, 0x539

    .line 819
    .line 820
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_2

    .line 824
    .line 825
    :sswitch_2b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 826
    .line 827
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 828
    .line 829
    .line 830
    move-result-object p2

    .line 831
    const/16 v0, 0x53d

    .line 832
    .line 833
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 834
    .line 835
    .line 836
    goto/16 :goto_2

    .line 837
    .line 838
    :sswitch_2c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 839
    .line 840
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object p2

    .line 844
    const/16 v0, 0x53c

    .line 845
    .line 846
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 847
    .line 848
    .line 849
    goto/16 :goto_2

    .line 850
    .line 851
    :sswitch_2d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 852
    .line 853
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 854
    .line 855
    .line 856
    move-result-object p2

    .line 857
    const/16 v0, 0x538

    .line 858
    .line 859
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_2

    .line 863
    .line 864
    :sswitch_2e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 865
    .line 866
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 867
    .line 868
    .line 869
    move-result-object p2

    .line 870
    const/16 v0, 0x536

    .line 871
    .line 872
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_2

    .line 876
    .line 877
    :sswitch_2f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 878
    .line 879
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 880
    .line 881
    .line 882
    move-result-object p2

    .line 883
    const/16 v0, 0x535

    .line 884
    .line 885
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 886
    .line 887
    .line 888
    goto/16 :goto_2

    .line 889
    .line 890
    :sswitch_30
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 891
    .line 892
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 893
    .line 894
    .line 895
    move-result-object p2

    .line 896
    const/16 v0, 0x534

    .line 897
    .line 898
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 899
    .line 900
    .line 901
    goto/16 :goto_2

    .line 902
    .line 903
    :sswitch_31
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 904
    .line 905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    .line 907
    .line 908
    move-result-object p2

    .line 909
    const/16 v0, 0x532

    .line 910
    .line 911
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_2

    .line 915
    .line 916
    :sswitch_32
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 917
    .line 918
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 919
    .line 920
    .line 921
    move-result-object p2

    .line 922
    const/16 v0, 0x531

    .line 923
    .line 924
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_2

    .line 928
    .line 929
    :sswitch_33
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 930
    .line 931
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 932
    .line 933
    .line 934
    move-result-object p2

    .line 935
    const/16 v0, 0x530

    .line 936
    .line 937
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_2

    .line 941
    .line 942
    :sswitch_34
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 943
    .line 944
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 945
    .line 946
    .line 947
    move-result-object p2

    .line 948
    const/16 v0, 0x52f

    .line 949
    .line 950
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 951
    .line 952
    .line 953
    goto/16 :goto_2

    .line 954
    .line 955
    :sswitch_35
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 956
    .line 957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    .line 959
    .line 960
    move-result-object p2

    .line 961
    const/16 v0, 0x52e

    .line 962
    .line 963
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_2

    .line 967
    .line 968
    :sswitch_36
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 969
    .line 970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 971
    .line 972
    .line 973
    move-result-object p2

    .line 974
    const/16 v0, 0x52d

    .line 975
    .line 976
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_2

    .line 980
    .line 981
    :sswitch_37
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 982
    .line 983
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 984
    .line 985
    .line 986
    move-result-object p2

    .line 987
    const/16 v0, 0x529

    .line 988
    .line 989
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 990
    .line 991
    .line 992
    goto/16 :goto_2

    .line 993
    .line 994
    :sswitch_38
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 995
    .line 996
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object p2

    .line 1000
    const/16 v0, 0x525

    .line 1001
    .line 1002
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_2

    .line 1006
    .line 1007
    :sswitch_39
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1008
    .line 1009
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p2

    .line 1013
    const/16 v0, 0x524

    .line 1014
    .line 1015
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_2

    .line 1019
    .line 1020
    :sswitch_3a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1021
    .line 1022
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p2

    .line 1026
    const v0, 0xa411

    .line 1027
    .line 1028
    .line 1029
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_2

    .line 1033
    .line 1034
    :sswitch_3b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1035
    .line 1036
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    .line 1038
    .line 1039
    move-result-object p2

    .line 1040
    const/16 v0, 0x42e

    .line 1041
    .line 1042
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_2

    .line 1046
    .line 1047
    :sswitch_3c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1048
    .line 1049
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p2

    .line 1053
    const/16 v0, 0x521

    .line 1054
    .line 1055
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1056
    .line 1057
    .line 1058
    goto/16 :goto_2

    .line 1059
    .line 1060
    :sswitch_3d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1061
    .line 1062
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1063
    .line 1064
    .line 1065
    move-result-object p2

    .line 1066
    const/16 v0, 0x520

    .line 1067
    .line 1068
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_2

    .line 1072
    .line 1073
    :sswitch_3e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1074
    .line 1075
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1076
    .line 1077
    .line 1078
    move-result-object p2

    .line 1079
    const/16 v0, 0x418

    .line 1080
    .line 1081
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1082
    .line 1083
    .line 1084
    goto/16 :goto_2

    .line 1085
    .line 1086
    :sswitch_3f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1087
    .line 1088
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1089
    .line 1090
    .line 1091
    move-result-object p2

    .line 1092
    const/16 v0, 0x51f

    .line 1093
    .line 1094
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_2

    .line 1098
    .line 1099
    :sswitch_40
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1100
    .line 1101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    .line 1103
    .line 1104
    move-result-object p2

    .line 1105
    const/16 v0, 0x417

    .line 1106
    .line 1107
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_2

    .line 1111
    .line 1112
    :sswitch_41
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1113
    .line 1114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1115
    .line 1116
    .line 1117
    move-result-object p2

    .line 1118
    const/16 v0, 0x419

    .line 1119
    .line 1120
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_2

    .line 1124
    .line 1125
    :sswitch_42
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1126
    .line 1127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1128
    .line 1129
    .line 1130
    move-result-object p2

    .line 1131
    const/16 v0, 0x51e

    .line 1132
    .line 1133
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1134
    .line 1135
    .line 1136
    goto/16 :goto_2

    .line 1137
    .line 1138
    :sswitch_43
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1139
    .line 1140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1141
    .line 1142
    .line 1143
    move-result-object p2

    .line 1144
    const/16 v0, 0x416

    .line 1145
    .line 1146
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_2

    .line 1150
    .line 1151
    :sswitch_44
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1152
    .line 1153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object p2

    .line 1157
    const/16 v0, 0x415

    .line 1158
    .line 1159
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_2

    .line 1163
    .line 1164
    :sswitch_45
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1165
    .line 1166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p2

    .line 1170
    const/16 v0, 0x414

    .line 1171
    .line 1172
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1173
    .line 1174
    .line 1175
    goto/16 :goto_2

    .line 1176
    .line 1177
    :sswitch_46
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1178
    .line 1179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p2

    .line 1183
    const/16 v0, 0x413

    .line 1184
    .line 1185
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1186
    .line 1187
    .line 1188
    goto/16 :goto_2

    .line 1189
    .line 1190
    :sswitch_47
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1191
    .line 1192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p2

    .line 1196
    const/16 v0, 0x411

    .line 1197
    .line 1198
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1199
    .line 1200
    .line 1201
    goto/16 :goto_2

    .line 1202
    .line 1203
    :sswitch_48
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1204
    .line 1205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object p2

    .line 1209
    const/16 v0, 0x410

    .line 1210
    .line 1211
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1212
    .line 1213
    .line 1214
    goto/16 :goto_2

    .line 1215
    .line 1216
    :sswitch_49
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1217
    .line 1218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1219
    .line 1220
    .line 1221
    move-result-object p2

    .line 1222
    const/16 v0, 0x427

    .line 1223
    .line 1224
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_2

    .line 1228
    .line 1229
    :sswitch_4a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1230
    .line 1231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1232
    .line 1233
    .line 1234
    move-result-object p2

    .line 1235
    const/16 v0, 0x40f

    .line 1236
    .line 1237
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1238
    .line 1239
    .line 1240
    goto/16 :goto_2

    .line 1241
    .line 1242
    :sswitch_4b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1243
    .line 1244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1245
    .line 1246
    .line 1247
    move-result-object p2

    .line 1248
    const/16 v0, 0x40e

    .line 1249
    .line 1250
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_2

    .line 1254
    .line 1255
    :sswitch_4c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1256
    .line 1257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1258
    .line 1259
    .line 1260
    move-result-object p2

    .line 1261
    const/16 v0, 0x40b

    .line 1262
    .line 1263
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1264
    .line 1265
    .line 1266
    goto/16 :goto_2

    .line 1267
    .line 1268
    :sswitch_4d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1269
    .line 1270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1271
    .line 1272
    .line 1273
    move-result-object p2

    .line 1274
    const/16 v0, 0x3f1

    .line 1275
    .line 1276
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_2

    .line 1280
    .line 1281
    :sswitch_4e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1282
    .line 1283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1284
    .line 1285
    .line 1286
    move-result-object p2

    .line 1287
    const/16 v0, 0x3f0

    .line 1288
    .line 1289
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1290
    .line 1291
    .line 1292
    goto/16 :goto_2

    .line 1293
    .line 1294
    :sswitch_4f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1295
    .line 1296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1297
    .line 1298
    .line 1299
    move-result-object p2

    .line 1300
    const/16 v0, 0x3ef

    .line 1301
    .line 1302
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1303
    .line 1304
    .line 1305
    goto/16 :goto_2

    .line 1306
    .line 1307
    :sswitch_50
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1308
    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1310
    .line 1311
    .line 1312
    move-result-object p2

    .line 1313
    const/16 v0, 0x40a

    .line 1314
    .line 1315
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_2

    .line 1319
    .line 1320
    :sswitch_51
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1321
    .line 1322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1323
    .line 1324
    .line 1325
    move-result-object p2

    .line 1326
    const/16 v0, 0x1db

    .line 1327
    .line 1328
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1329
    .line 1330
    .line 1331
    goto/16 :goto_2

    .line 1332
    .line 1333
    :sswitch_52
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1334
    .line 1335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1336
    .line 1337
    .line 1338
    move-result-object p2

    .line 1339
    const/16 v0, 0x40c

    .line 1340
    .line 1341
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_2

    .line 1345
    .line 1346
    :sswitch_53
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1347
    .line 1348
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object p2

    .line 1352
    const/16 v0, 0x3fc

    .line 1353
    .line 1354
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_2

    .line 1358
    .line 1359
    :sswitch_54
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1360
    .line 1361
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object p2

    .line 1365
    const/16 v0, 0x3ed

    .line 1366
    .line 1367
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1368
    .line 1369
    .line 1370
    goto/16 :goto_2

    .line 1371
    .line 1372
    :sswitch_55
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1373
    .line 1374
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1375
    .line 1376
    .line 1377
    move-result-object p2

    .line 1378
    const/16 v2, 0x3eb

    .line 1379
    .line 1380
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_2

    .line 1384
    .line 1385
    :sswitch_56
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1386
    .line 1387
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1388
    .line 1389
    .line 1390
    move-result-object p2

    .line 1391
    invoke-direct {p1, v5, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_2

    .line 1395
    .line 1396
    :sswitch_57
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1397
    .line 1398
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1399
    .line 1400
    .line 1401
    move-result-object p2

    .line 1402
    const/16 v0, 0x3d9

    .line 1403
    .line 1404
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_2

    .line 1408
    .line 1409
    :sswitch_58
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1410
    .line 1411
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1412
    .line 1413
    .line 1414
    move-result-object p2

    .line 1415
    const/16 v0, 0x3d6

    .line 1416
    .line 1417
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_2

    .line 1421
    .line 1422
    :sswitch_59
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1423
    .line 1424
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1425
    .line 1426
    .line 1427
    move-result-object p2

    .line 1428
    const/16 v0, 0x3b8

    .line 1429
    .line 1430
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1431
    .line 1432
    .line 1433
    goto/16 :goto_2

    .line 1434
    .line 1435
    :sswitch_5a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1436
    .line 1437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1438
    .line 1439
    .line 1440
    move-result-object p2

    .line 1441
    const v0, 0xc482

    .line 1442
    .line 1443
    .line 1444
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1445
    .line 1446
    .line 1447
    goto/16 :goto_2

    .line 1448
    .line 1449
    :sswitch_5b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1450
    .line 1451
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1452
    .line 1453
    .line 1454
    move-result-object p2

    .line 1455
    const v0, 0xc481

    .line 1456
    .line 1457
    .line 1458
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_2

    .line 1462
    .line 1463
    :sswitch_5c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1464
    .line 1465
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1466
    .line 1467
    .line 1468
    move-result-object p2

    .line 1469
    const v0, 0xc480

    .line 1470
    .line 1471
    .line 1472
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_2

    .line 1476
    .line 1477
    :sswitch_5d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1478
    .line 1479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1480
    .line 1481
    .line 1482
    move-result-object p2

    .line 1483
    const v0, 0xc47f

    .line 1484
    .line 1485
    .line 1486
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1487
    .line 1488
    .line 1489
    goto/16 :goto_2

    .line 1490
    .line 1491
    :sswitch_5e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1492
    .line 1493
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1494
    .line 1495
    .line 1496
    move-result-object p2

    .line 1497
    const v0, 0xc47e

    .line 1498
    .line 1499
    .line 1500
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1501
    .line 1502
    .line 1503
    goto/16 :goto_2

    .line 1504
    .line 1505
    :sswitch_5f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1506
    .line 1507
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1508
    .line 1509
    .line 1510
    move-result-object p2

    .line 1511
    const/16 v0, 0x642

    .line 1512
    .line 1513
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1514
    .line 1515
    .line 1516
    goto/16 :goto_2

    .line 1517
    .line 1518
    :sswitch_60
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1519
    .line 1520
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1521
    .line 1522
    .line 1523
    move-result-object p2

    .line 1524
    const/16 v0, 0x641

    .line 1525
    .line 1526
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1527
    .line 1528
    .line 1529
    goto/16 :goto_2

    .line 1530
    .line 1531
    :sswitch_61
    if-gez p2, :cond_1

    .line 1532
    .line 1533
    goto/16 :goto_1

    .line 1534
    .line 1535
    :cond_1
    const/16 v0, 0xc8

    .line 1536
    .line 1537
    if-ge p2, v0, :cond_2

    .line 1538
    .line 1539
    move p2, v0

    .line 1540
    :cond_2
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 1541
    .line 1542
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1543
    .line 1544
    .line 1545
    move-result-object p2

    .line 1546
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1547
    .line 1548
    .line 1549
    :goto_0
    move-object p1, v0

    .line 1550
    goto/16 :goto_2

    .line 1551
    .line 1552
    :sswitch_62
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1553
    .line 1554
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1555
    .line 1556
    .line 1557
    move-result-object p2

    .line 1558
    const/16 v0, 0x421

    .line 1559
    .line 1560
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_2

    .line 1564
    .line 1565
    :sswitch_63
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1566
    .line 1567
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1568
    .line 1569
    .line 1570
    move-result-object p2

    .line 1571
    const/16 v0, 0x420

    .line 1572
    .line 1573
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_2

    .line 1577
    .line 1578
    :sswitch_64
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1579
    .line 1580
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1581
    .line 1582
    .line 1583
    move-result-object p2

    .line 1584
    const/16 v0, 0x41f

    .line 1585
    .line 1586
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1587
    .line 1588
    .line 1589
    goto/16 :goto_2

    .line 1590
    .line 1591
    :sswitch_65
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1592
    .line 1593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1594
    .line 1595
    .line 1596
    move-result-object p2

    .line 1597
    const/16 v0, 0x3f6

    .line 1598
    .line 1599
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_2

    .line 1603
    .line 1604
    :sswitch_66
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1605
    .line 1606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1607
    .line 1608
    .line 1609
    move-result-object p2

    .line 1610
    const/16 v0, 0x3f4

    .line 1611
    .line 1612
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1613
    .line 1614
    .line 1615
    goto/16 :goto_2

    .line 1616
    .line 1617
    :sswitch_67
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1618
    .line 1619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1620
    .line 1621
    .line 1622
    move-result-object p2

    .line 1623
    const/16 v0, 0x3f3

    .line 1624
    .line 1625
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1626
    .line 1627
    .line 1628
    goto/16 :goto_2

    .line 1629
    .line 1630
    :sswitch_68
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1631
    .line 1632
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1633
    .line 1634
    .line 1635
    move-result-object p2

    .line 1636
    const/16 v0, 0x3f2

    .line 1637
    .line 1638
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1639
    .line 1640
    .line 1641
    goto/16 :goto_2

    .line 1642
    .line 1643
    :sswitch_69
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1644
    .line 1645
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1646
    .line 1647
    .line 1648
    move-result-object p2

    .line 1649
    const/16 v0, 0x23a

    .line 1650
    .line 1651
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1652
    .line 1653
    .line 1654
    goto/16 :goto_2

    .line 1655
    .line 1656
    :sswitch_6a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1657
    .line 1658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1659
    .line 1660
    .line 1661
    move-result-object p2

    .line 1662
    const/16 v0, 0x2fa

    .line 1663
    .line 1664
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1665
    .line 1666
    .line 1667
    goto/16 :goto_2

    .line 1668
    .line 1669
    :sswitch_6b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1670
    .line 1671
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1672
    .line 1673
    .line 1674
    move-result-object p2

    .line 1675
    const/16 v0, 0x2f9

    .line 1676
    .line 1677
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1678
    .line 1679
    .line 1680
    goto/16 :goto_2

    .line 1681
    .line 1682
    :sswitch_6c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1683
    .line 1684
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1685
    .line 1686
    .line 1687
    move-result-object p2

    .line 1688
    const/16 v0, 0x6d0

    .line 1689
    .line 1690
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1691
    .line 1692
    .line 1693
    goto/16 :goto_2

    .line 1694
    .line 1695
    :sswitch_6d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1696
    .line 1697
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1698
    .line 1699
    .line 1700
    move-result-object p2

    .line 1701
    const/16 v0, 0x2a6

    .line 1702
    .line 1703
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1704
    .line 1705
    .line 1706
    goto/16 :goto_2

    .line 1707
    .line 1708
    :sswitch_6e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1709
    .line 1710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1711
    .line 1712
    .line 1713
    move-result-object p2

    .line 1714
    const/16 v0, 0x2a0

    .line 1715
    .line 1716
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1717
    .line 1718
    .line 1719
    goto/16 :goto_2

    .line 1720
    .line 1721
    :sswitch_6f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1722
    .line 1723
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1724
    .line 1725
    .line 1726
    move-result-object p2

    .line 1727
    const/16 v0, 0x3ec

    .line 1728
    .line 1729
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1730
    .line 1731
    .line 1732
    goto/16 :goto_2

    .line 1733
    .line 1734
    :sswitch_70
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1735
    .line 1736
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1737
    .line 1738
    .line 1739
    move-result-object p2

    .line 1740
    const/16 v0, 0x29a

    .line 1741
    .line 1742
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1743
    .line 1744
    .line 1745
    goto/16 :goto_2

    .line 1746
    .line 1747
    :sswitch_71
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1748
    .line 1749
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1750
    .line 1751
    .line 1752
    move-result-object p2

    .line 1753
    const/16 v2, 0x388

    .line 1754
    .line 1755
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1756
    .line 1757
    .line 1758
    goto/16 :goto_2

    .line 1759
    .line 1760
    :sswitch_72
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1761
    .line 1762
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1763
    .line 1764
    .line 1765
    move-result-object p2

    .line 1766
    const/16 v0, 0x3c0

    .line 1767
    .line 1768
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1769
    .line 1770
    .line 1771
    goto/16 :goto_2

    .line 1772
    .line 1773
    :sswitch_73
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1774
    .line 1775
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1776
    .line 1777
    .line 1778
    move-result-object p2

    .line 1779
    const/16 v0, 0x2a5

    .line 1780
    .line 1781
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1782
    .line 1783
    .line 1784
    goto/16 :goto_2

    .line 1785
    .line 1786
    :sswitch_74
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1787
    .line 1788
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1789
    .line 1790
    .line 1791
    move-result-object p2

    .line 1792
    const/16 v0, 0x2a4

    .line 1793
    .line 1794
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1795
    .line 1796
    .line 1797
    goto/16 :goto_2

    .line 1798
    .line 1799
    :sswitch_75
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1800
    .line 1801
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1802
    .line 1803
    .line 1804
    move-result-object p2

    .line 1805
    const/16 v0, 0x2a3

    .line 1806
    .line 1807
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1808
    .line 1809
    .line 1810
    goto/16 :goto_2

    .line 1811
    .line 1812
    :sswitch_76
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1813
    .line 1814
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1815
    .line 1816
    .line 1817
    move-result-object p2

    .line 1818
    const/16 v0, 0x2a2

    .line 1819
    .line 1820
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1821
    .line 1822
    .line 1823
    goto/16 :goto_2

    .line 1824
    .line 1825
    :sswitch_77
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1826
    .line 1827
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1828
    .line 1829
    .line 1830
    move-result-object p2

    .line 1831
    const/16 v0, 0x2a1

    .line 1832
    .line 1833
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1834
    .line 1835
    .line 1836
    goto/16 :goto_2

    .line 1837
    .line 1838
    :sswitch_78
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1839
    .line 1840
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1841
    .line 1842
    .line 1843
    move-result-object p2

    .line 1844
    const/16 v0, 0xe0

    .line 1845
    .line 1846
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1847
    .line 1848
    .line 1849
    goto/16 :goto_2

    .line 1850
    .line 1851
    :sswitch_79
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1852
    .line 1853
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1854
    .line 1855
    .line 1856
    move-result-object p2

    .line 1857
    const/16 v0, 0x357

    .line 1858
    .line 1859
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1860
    .line 1861
    .line 1862
    goto/16 :goto_2

    .line 1863
    .line 1864
    :sswitch_7a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1865
    .line 1866
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1867
    .line 1868
    .line 1869
    move-result-object p2

    .line 1870
    const/16 v0, 0x33d

    .line 1871
    .line 1872
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1873
    .line 1874
    .line 1875
    goto/16 :goto_2

    .line 1876
    .line 1877
    :sswitch_7b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1878
    .line 1879
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1880
    .line 1881
    .line 1882
    move-result-object p2

    .line 1883
    const/16 v0, 0x366

    .line 1884
    .line 1885
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1886
    .line 1887
    .line 1888
    goto/16 :goto_2

    .line 1889
    .line 1890
    :sswitch_7c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1891
    .line 1892
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1893
    .line 1894
    .line 1895
    move-result-object p2

    .line 1896
    const/16 v2, 0x294

    .line 1897
    .line 1898
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 1899
    .line 1900
    .line 1901
    goto/16 :goto_2

    .line 1902
    .line 1903
    :sswitch_7d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1904
    .line 1905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1906
    .line 1907
    .line 1908
    move-result-object p2

    .line 1909
    const/16 v0, 0x101

    .line 1910
    .line 1911
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1912
    .line 1913
    .line 1914
    goto/16 :goto_2

    .line 1915
    .line 1916
    :sswitch_7e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1917
    .line 1918
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1919
    .line 1920
    .line 1921
    move-result-object p2

    .line 1922
    const/16 v0, 0x33c

    .line 1923
    .line 1924
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1925
    .line 1926
    .line 1927
    goto/16 :goto_2

    .line 1928
    .line 1929
    :sswitch_7f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1930
    .line 1931
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1932
    .line 1933
    .line 1934
    move-result-object p2

    .line 1935
    const/16 v0, 0x15c

    .line 1936
    .line 1937
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1938
    .line 1939
    .line 1940
    goto/16 :goto_2

    .line 1941
    .line 1942
    :sswitch_80
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1943
    .line 1944
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1945
    .line 1946
    .line 1947
    move-result-object p2

    .line 1948
    const/16 v0, 0x28e

    .line 1949
    .line 1950
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1951
    .line 1952
    .line 1953
    goto/16 :goto_2

    .line 1954
    .line 1955
    :sswitch_81
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1956
    .line 1957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1958
    .line 1959
    .line 1960
    move-result-object p2

    .line 1961
    const/16 v0, 0x22c

    .line 1962
    .line 1963
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1964
    .line 1965
    .line 1966
    goto/16 :goto_2

    .line 1967
    .line 1968
    :sswitch_82
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1969
    .line 1970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1971
    .line 1972
    .line 1973
    move-result-object p2

    .line 1974
    const/16 v0, 0x337

    .line 1975
    .line 1976
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1977
    .line 1978
    .line 1979
    goto/16 :goto_2

    .line 1980
    .line 1981
    :sswitch_83
    if-lez p2, :cond_9

    .line 1982
    .line 1983
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 1984
    .line 1985
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1986
    .line 1987
    .line 1988
    move-result-object p2

    .line 1989
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 1990
    .line 1991
    .line 1992
    goto/16 :goto_0

    .line 1993
    .line 1994
    :sswitch_84
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 1995
    .line 1996
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1997
    .line 1998
    .line 1999
    move-result-object p2

    .line 2000
    const/16 v2, 0x334

    .line 2001
    .line 2002
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2003
    .line 2004
    .line 2005
    goto/16 :goto_2

    .line 2006
    .line 2007
    :sswitch_85
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2008
    .line 2009
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2010
    .line 2011
    .line 2012
    move-result-object p2

    .line 2013
    const/16 v0, 0x14d

    .line 2014
    .line 2015
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2016
    .line 2017
    .line 2018
    goto/16 :goto_2

    .line 2019
    .line 2020
    :sswitch_86
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2021
    .line 2022
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2023
    .line 2024
    .line 2025
    move-result-object p2

    .line 2026
    const/16 v0, 0x138b

    .line 2027
    .line 2028
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2029
    .line 2030
    .line 2031
    goto/16 :goto_2

    .line 2032
    .line 2033
    :sswitch_87
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2034
    .line 2035
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2036
    .line 2037
    .line 2038
    move-result-object p2

    .line 2039
    const/16 v0, 0x21b

    .line 2040
    .line 2041
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2042
    .line 2043
    .line 2044
    goto/16 :goto_2

    .line 2045
    .line 2046
    :sswitch_88
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2047
    .line 2048
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2049
    .line 2050
    .line 2051
    move-result-object p2

    .line 2052
    const/16 v0, 0x21a

    .line 2053
    .line 2054
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2055
    .line 2056
    .line 2057
    goto/16 :goto_2

    .line 2058
    .line 2059
    :sswitch_89
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2060
    .line 2061
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2062
    .line 2063
    .line 2064
    move-result-object p2

    .line 2065
    const/16 v0, 0x219

    .line 2066
    .line 2067
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2068
    .line 2069
    .line 2070
    goto/16 :goto_2

    .line 2071
    .line 2072
    :sswitch_8a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2073
    .line 2074
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2075
    .line 2076
    .line 2077
    move-result-object p2

    .line 2078
    const/16 v0, 0x218

    .line 2079
    .line 2080
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2081
    .line 2082
    .line 2083
    goto/16 :goto_2

    .line 2084
    .line 2085
    :sswitch_8b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2086
    .line 2087
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2088
    .line 2089
    .line 2090
    move-result-object p2

    .line 2091
    const/16 v0, 0x287

    .line 2092
    .line 2093
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2094
    .line 2095
    .line 2096
    goto/16 :goto_2

    .line 2097
    .line 2098
    :sswitch_8c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2099
    .line 2100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2101
    .line 2102
    .line 2103
    move-result-object p2

    .line 2104
    const/16 v0, 0x256

    .line 2105
    .line 2106
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2107
    .line 2108
    .line 2109
    goto/16 :goto_2

    .line 2110
    .line 2111
    :sswitch_8d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2112
    .line 2113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2114
    .line 2115
    .line 2116
    move-result-object p2

    .line 2117
    const/16 v0, 0x142

    .line 2118
    .line 2119
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2120
    .line 2121
    .line 2122
    goto/16 :goto_2

    .line 2123
    .line 2124
    :sswitch_8e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2125
    .line 2126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2127
    .line 2128
    .line 2129
    move-result-object p2

    .line 2130
    const/16 v0, 0x253

    .line 2131
    .line 2132
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2133
    .line 2134
    .line 2135
    goto/16 :goto_2

    .line 2136
    .line 2137
    :sswitch_8f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2138
    .line 2139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2140
    .line 2141
    .line 2142
    move-result-object p2

    .line 2143
    const/16 v0, 0x252

    .line 2144
    .line 2145
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2146
    .line 2147
    .line 2148
    goto/16 :goto_2

    .line 2149
    .line 2150
    :sswitch_90
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2151
    .line 2152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2153
    .line 2154
    .line 2155
    move-result-object p2

    .line 2156
    const/16 v0, 0x251

    .line 2157
    .line 2158
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2159
    .line 2160
    .line 2161
    goto/16 :goto_2

    .line 2162
    .line 2163
    :sswitch_91
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2164
    .line 2165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2166
    .line 2167
    .line 2168
    move-result-object p2

    .line 2169
    const/16 v0, 0x250

    .line 2170
    .line 2171
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2172
    .line 2173
    .line 2174
    goto/16 :goto_2

    .line 2175
    .line 2176
    :sswitch_92
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2177
    .line 2178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2179
    .line 2180
    .line 2181
    move-result-object p2

    .line 2182
    const/16 v0, 0x24f

    .line 2183
    .line 2184
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2185
    .line 2186
    .line 2187
    goto/16 :goto_2

    .line 2188
    .line 2189
    :sswitch_93
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2190
    .line 2191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2192
    .line 2193
    .line 2194
    move-result-object p2

    .line 2195
    const/16 v0, 0x24b

    .line 2196
    .line 2197
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2198
    .line 2199
    .line 2200
    goto/16 :goto_2

    .line 2201
    .line 2202
    :sswitch_94
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2203
    .line 2204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2205
    .line 2206
    .line 2207
    move-result-object p2

    .line 2208
    const/16 v0, 0x246

    .line 2209
    .line 2210
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2211
    .line 2212
    .line 2213
    goto/16 :goto_2

    .line 2214
    .line 2215
    :sswitch_95
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2216
    .line 2217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2218
    .line 2219
    .line 2220
    move-result-object p2

    .line 2221
    const/16 v0, 0x298

    .line 2222
    .line 2223
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2224
    .line 2225
    .line 2226
    goto/16 :goto_2

    .line 2227
    .line 2228
    :sswitch_96
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2229
    .line 2230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2231
    .line 2232
    .line 2233
    move-result-object p2

    .line 2234
    const/16 v2, 0x244

    .line 2235
    .line 2236
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2237
    .line 2238
    .line 2239
    goto/16 :goto_2

    .line 2240
    .line 2241
    :sswitch_97
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2242
    .line 2243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2244
    .line 2245
    .line 2246
    move-result-object p2

    .line 2247
    const/16 v0, 0x240

    .line 2248
    .line 2249
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2250
    .line 2251
    .line 2252
    goto/16 :goto_2

    .line 2253
    .line 2254
    :sswitch_98
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2255
    .line 2256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2257
    .line 2258
    .line 2259
    move-result-object p2

    .line 2260
    const/16 v0, 0x23f

    .line 2261
    .line 2262
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2263
    .line 2264
    .line 2265
    goto/16 :goto_2

    .line 2266
    .line 2267
    :sswitch_99
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2268
    .line 2269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2270
    .line 2271
    .line 2272
    move-result-object p2

    .line 2273
    const/16 v0, 0x23e

    .line 2274
    .line 2275
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2276
    .line 2277
    .line 2278
    goto/16 :goto_2

    .line 2279
    .line 2280
    :sswitch_9a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2281
    .line 2282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2283
    .line 2284
    .line 2285
    move-result-object p2

    .line 2286
    const/16 v0, 0x23d

    .line 2287
    .line 2288
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2289
    .line 2290
    .line 2291
    goto/16 :goto_2

    .line 2292
    .line 2293
    :sswitch_9b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2294
    .line 2295
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2296
    .line 2297
    .line 2298
    move-result-object p2

    .line 2299
    const/16 v0, 0x23c

    .line 2300
    .line 2301
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2302
    .line 2303
    .line 2304
    goto/16 :goto_2

    .line 2305
    .line 2306
    :sswitch_9c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2307
    .line 2308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2309
    .line 2310
    .line 2311
    move-result-object p2

    .line 2312
    const/16 v0, 0x23b

    .line 2313
    .line 2314
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2315
    .line 2316
    .line 2317
    goto/16 :goto_2

    .line 2318
    .line 2319
    :sswitch_9d
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2320
    .line 2321
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2322
    .line 2323
    .line 2324
    move-result-object p2

    .line 2325
    const/16 v0, 0xa4

    .line 2326
    .line 2327
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2328
    .line 2329
    .line 2330
    goto/16 :goto_2

    .line 2331
    .line 2332
    :sswitch_9e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2333
    .line 2334
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2335
    .line 2336
    .line 2337
    move-result-object p2

    .line 2338
    const/16 v0, 0x238

    .line 2339
    .line 2340
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2341
    .line 2342
    .line 2343
    goto/16 :goto_2

    .line 2344
    .line 2345
    :sswitch_9f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2346
    .line 2347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2348
    .line 2349
    .line 2350
    move-result-object p2

    .line 2351
    const/16 v0, 0x356

    .line 2352
    .line 2353
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2354
    .line 2355
    .line 2356
    goto/16 :goto_2

    .line 2357
    .line 2358
    :sswitch_a0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2359
    .line 2360
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2361
    .line 2362
    .line 2363
    move-result-object p2

    .line 2364
    const/16 v0, 0x355

    .line 2365
    .line 2366
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2367
    .line 2368
    .line 2369
    goto/16 :goto_2

    .line 2370
    .line 2371
    :sswitch_a1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2372
    .line 2373
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2374
    .line 2375
    .line 2376
    move-result-object p2

    .line 2377
    const/16 v0, 0x236

    .line 2378
    .line 2379
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2380
    .line 2381
    .line 2382
    goto/16 :goto_2

    .line 2383
    .line 2384
    :sswitch_a2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2385
    .line 2386
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2387
    .line 2388
    .line 2389
    move-result-object p2

    .line 2390
    const/16 v0, 0x235

    .line 2391
    .line 2392
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2393
    .line 2394
    .line 2395
    goto/16 :goto_2

    .line 2396
    .line 2397
    :sswitch_a3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2398
    .line 2399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2400
    .line 2401
    .line 2402
    move-result-object p2

    .line 2403
    const/16 v0, 0x234

    .line 2404
    .line 2405
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2406
    .line 2407
    .line 2408
    goto/16 :goto_2

    .line 2409
    .line 2410
    :sswitch_a4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2411
    .line 2412
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2413
    .line 2414
    .line 2415
    move-result-object p2

    .line 2416
    const/16 v0, 0x233

    .line 2417
    .line 2418
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2419
    .line 2420
    .line 2421
    goto/16 :goto_2

    .line 2422
    .line 2423
    :sswitch_a5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2424
    .line 2425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2426
    .line 2427
    .line 2428
    move-result-object p2

    .line 2429
    const/16 v0, 0x232

    .line 2430
    .line 2431
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2432
    .line 2433
    .line 2434
    goto/16 :goto_2

    .line 2435
    .line 2436
    :sswitch_a6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2437
    .line 2438
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2439
    .line 2440
    .line 2441
    move-result-object p2

    .line 2442
    const/16 v0, 0x231

    .line 2443
    .line 2444
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2445
    .line 2446
    .line 2447
    goto/16 :goto_2

    .line 2448
    .line 2449
    :sswitch_a7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2450
    .line 2451
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2452
    .line 2453
    .line 2454
    move-result-object p2

    .line 2455
    const/16 v0, 0x230

    .line 2456
    .line 2457
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2458
    .line 2459
    .line 2460
    goto/16 :goto_2

    .line 2461
    .line 2462
    :sswitch_a8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2463
    .line 2464
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2465
    .line 2466
    .line 2467
    move-result-object p2

    .line 2468
    const/16 v0, 0x22f

    .line 2469
    .line 2470
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2471
    .line 2472
    .line 2473
    goto/16 :goto_2

    .line 2474
    .line 2475
    :sswitch_a9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2476
    .line 2477
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2478
    .line 2479
    .line 2480
    move-result-object p2

    .line 2481
    const/16 v0, 0x22e

    .line 2482
    .line 2483
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2484
    .line 2485
    .line 2486
    goto/16 :goto_2

    .line 2487
    .line 2488
    :sswitch_aa
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2489
    .line 2490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2491
    .line 2492
    .line 2493
    move-result-object p2

    .line 2494
    const/16 v0, 0x22d

    .line 2495
    .line 2496
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2497
    .line 2498
    .line 2499
    goto/16 :goto_2

    .line 2500
    .line 2501
    :sswitch_ab
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2502
    .line 2503
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2504
    .line 2505
    .line 2506
    move-result-object p2

    .line 2507
    const/16 v0, 0x228

    .line 2508
    .line 2509
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2510
    .line 2511
    .line 2512
    goto/16 :goto_2

    .line 2513
    .line 2514
    :sswitch_ac
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2515
    .line 2516
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2517
    .line 2518
    .line 2519
    move-result-object p2

    .line 2520
    const/16 v0, 0x227

    .line 2521
    .line 2522
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2523
    .line 2524
    .line 2525
    goto/16 :goto_2

    .line 2526
    .line 2527
    :sswitch_ad
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2528
    .line 2529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2530
    .line 2531
    .line 2532
    move-result-object p2

    .line 2533
    const/16 v0, 0x226

    .line 2534
    .line 2535
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2536
    .line 2537
    .line 2538
    goto/16 :goto_2

    .line 2539
    .line 2540
    :sswitch_ae
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2541
    .line 2542
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2543
    .line 2544
    .line 2545
    move-result-object p2

    .line 2546
    const/16 v0, 0x33e

    .line 2547
    .line 2548
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2549
    .line 2550
    .line 2551
    goto/16 :goto_2

    .line 2552
    .line 2553
    :sswitch_af
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2554
    .line 2555
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2556
    .line 2557
    .line 2558
    move-result-object p2

    .line 2559
    const/16 v0, 0x21e

    .line 2560
    .line 2561
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2562
    .line 2563
    .line 2564
    goto/16 :goto_2

    .line 2565
    .line 2566
    :sswitch_b0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2567
    .line 2568
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2569
    .line 2570
    .line 2571
    move-result-object p2

    .line 2572
    const/16 v0, 0x173

    .line 2573
    .line 2574
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2575
    .line 2576
    .line 2577
    goto/16 :goto_2

    .line 2578
    .line 2579
    :sswitch_b1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2580
    .line 2581
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2582
    .line 2583
    .line 2584
    move-result-object p2

    .line 2585
    const/16 v0, 0x12b

    .line 2586
    .line 2587
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2588
    .line 2589
    .line 2590
    goto/16 :goto_2

    .line 2591
    .line 2592
    :sswitch_b2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2593
    .line 2594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2595
    .line 2596
    .line 2597
    move-result-object p2

    .line 2598
    const/16 v0, 0x12a

    .line 2599
    .line 2600
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2601
    .line 2602
    .line 2603
    goto/16 :goto_2

    .line 2604
    .line 2605
    :sswitch_b3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2606
    .line 2607
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2608
    .line 2609
    .line 2610
    move-result-object p2

    .line 2611
    const/16 v0, 0x129

    .line 2612
    .line 2613
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2614
    .line 2615
    .line 2616
    goto/16 :goto_2

    .line 2617
    .line 2618
    :sswitch_b4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2619
    .line 2620
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2621
    .line 2622
    .line 2623
    move-result-object p2

    .line 2624
    const/16 v0, 0x203

    .line 2625
    .line 2626
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2627
    .line 2628
    .line 2629
    goto/16 :goto_2

    .line 2630
    .line 2631
    :sswitch_b5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2632
    .line 2633
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2634
    .line 2635
    .line 2636
    move-result-object p2

    .line 2637
    const/16 v2, 0x2ef

    .line 2638
    .line 2639
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2640
    .line 2641
    .line 2642
    goto/16 :goto_2

    .line 2643
    .line 2644
    :sswitch_b6
    const-string/jumbo v0, "subtitle_mask"

    .line 2645
    .line 2646
    .line 2647
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 2648
    .line 2649
    .line 2650
    move-result v0

    .line 2651
    if-nez v0, :cond_3

    .line 2652
    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2654
    .line 2655
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2656
    .line 2657
    .line 2658
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    .line 2660
    .line 2661
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2662
    .line 2663
    .line 2664
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2668
    .line 2669
    .line 2670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2671
    .line 2672
    .line 2673
    move-result-object p1

    .line 2674
    invoke-static {v9, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    .line 2676
    .line 2677
    goto/16 :goto_1

    .line 2678
    .line 2679
    :cond_3
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 2680
    .line 2681
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2682
    .line 2683
    .line 2684
    move-result-object p2

    .line 2685
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2686
    .line 2687
    .line 2688
    goto/16 :goto_0

    .line 2689
    .line 2690
    :sswitch_b7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2691
    .line 2692
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2693
    .line 2694
    .line 2695
    move-result-object p2

    .line 2696
    const/16 v0, 0x125

    .line 2697
    .line 2698
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2699
    .line 2700
    .line 2701
    goto/16 :goto_2

    .line 2702
    .line 2703
    :sswitch_b8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2704
    .line 2705
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2706
    .line 2707
    .line 2708
    move-result-object p2

    .line 2709
    const/16 v0, 0x124

    .line 2710
    .line 2711
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2712
    .line 2713
    .line 2714
    goto/16 :goto_2

    .line 2715
    .line 2716
    :sswitch_b9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2717
    .line 2718
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2719
    .line 2720
    .line 2721
    move-result-object p2

    .line 2722
    const/16 v2, 0x265

    .line 2723
    .line 2724
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2725
    .line 2726
    .line 2727
    goto/16 :goto_2

    .line 2728
    .line 2729
    :sswitch_ba
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2730
    .line 2731
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2732
    .line 2733
    .line 2734
    move-result-object p2

    .line 2735
    const/16 v0, 0x92

    .line 2736
    .line 2737
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2738
    .line 2739
    .line 2740
    goto/16 :goto_2

    .line 2741
    .line 2742
    :sswitch_bb
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2743
    .line 2744
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2745
    .line 2746
    .line 2747
    move-result-object p2

    .line 2748
    const/16 v0, 0x123

    .line 2749
    .line 2750
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2751
    .line 2752
    .line 2753
    goto/16 :goto_2

    .line 2754
    .line 2755
    :sswitch_bc
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2756
    .line 2757
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2758
    .line 2759
    .line 2760
    move-result-object p2

    .line 2761
    const/16 v0, 0x120

    .line 2762
    .line 2763
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2764
    .line 2765
    .line 2766
    goto/16 :goto_2

    .line 2767
    .line 2768
    :sswitch_bd
    if-gez p2, :cond_4

    .line 2769
    .line 2770
    goto/16 :goto_1

    .line 2771
    .line 2772
    :cond_4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2773
    .line 2774
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2775
    .line 2776
    .line 2777
    move-result-object p2

    .line 2778
    const/16 v0, 0x11e

    .line 2779
    .line 2780
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2781
    .line 2782
    .line 2783
    goto/16 :goto_2

    .line 2784
    .line 2785
    :sswitch_be
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2786
    .line 2787
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2788
    .line 2789
    .line 2790
    move-result-object p2

    .line 2791
    const/16 v0, 0x11d

    .line 2792
    .line 2793
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2794
    .line 2795
    .line 2796
    goto/16 :goto_2

    .line 2797
    .line 2798
    :sswitch_bf
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2799
    .line 2800
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2801
    .line 2802
    .line 2803
    move-result-object p2

    .line 2804
    const/16 v2, 0x191

    .line 2805
    .line 2806
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2807
    .line 2808
    .line 2809
    goto/16 :goto_2

    .line 2810
    .line 2811
    :sswitch_c0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2812
    .line 2813
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2814
    .line 2815
    .line 2816
    move-result-object p2

    .line 2817
    const/16 v2, 0x117

    .line 2818
    .line 2819
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2820
    .line 2821
    .line 2822
    goto/16 :goto_2

    .line 2823
    .line 2824
    :sswitch_c1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2825
    .line 2826
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2827
    .line 2828
    .line 2829
    move-result-object p2

    .line 2830
    const/16 v0, 0x116

    .line 2831
    .line 2832
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2833
    .line 2834
    .line 2835
    goto/16 :goto_2

    .line 2836
    .line 2837
    :sswitch_c2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2838
    .line 2839
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2840
    .line 2841
    .line 2842
    move-result-object p2

    .line 2843
    const/16 v0, 0x115

    .line 2844
    .line 2845
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2846
    .line 2847
    .line 2848
    goto/16 :goto_2

    .line 2849
    .line 2850
    :sswitch_c3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2851
    .line 2852
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2853
    .line 2854
    .line 2855
    move-result-object p2

    .line 2856
    const/16 v0, 0x114

    .line 2857
    .line 2858
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2859
    .line 2860
    .line 2861
    goto/16 :goto_2

    .line 2862
    .line 2863
    :sswitch_c4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2864
    .line 2865
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2866
    .line 2867
    .line 2868
    move-result-object p2

    .line 2869
    const/16 v0, 0x107

    .line 2870
    .line 2871
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2872
    .line 2873
    .line 2874
    goto/16 :goto_2

    .line 2875
    .line 2876
    :sswitch_c5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2877
    .line 2878
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2879
    .line 2880
    .line 2881
    move-result-object p2

    .line 2882
    const/16 v0, 0x106

    .line 2883
    .line 2884
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2885
    .line 2886
    .line 2887
    goto/16 :goto_2

    .line 2888
    .line 2889
    :sswitch_c6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2890
    .line 2891
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2892
    .line 2893
    .line 2894
    move-result-object p2

    .line 2895
    const/16 v0, 0x100

    .line 2896
    .line 2897
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2898
    .line 2899
    .line 2900
    goto/16 :goto_2

    .line 2901
    .line 2902
    :sswitch_c7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2903
    .line 2904
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2905
    .line 2906
    .line 2907
    move-result-object p2

    .line 2908
    const/16 v0, 0x104

    .line 2909
    .line 2910
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2911
    .line 2912
    .line 2913
    goto/16 :goto_2

    .line 2914
    .line 2915
    :sswitch_c8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2916
    .line 2917
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2918
    .line 2919
    .line 2920
    move-result-object p2

    .line 2921
    const/16 v0, 0x103

    .line 2922
    .line 2923
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2924
    .line 2925
    .line 2926
    goto/16 :goto_2

    .line 2927
    .line 2928
    :sswitch_c9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2929
    .line 2930
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2931
    .line 2932
    .line 2933
    move-result-object p2

    .line 2934
    const/16 v0, 0x102

    .line 2935
    .line 2936
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2937
    .line 2938
    .line 2939
    goto/16 :goto_2

    .line 2940
    .line 2941
    :sswitch_ca
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2942
    .line 2943
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2944
    .line 2945
    .line 2946
    move-result-object p2

    .line 2947
    const/16 v0, 0xfd

    .line 2948
    .line 2949
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 2950
    .line 2951
    .line 2952
    goto/16 :goto_2

    .line 2953
    .line 2954
    :sswitch_cb
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2955
    .line 2956
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2957
    .line 2958
    .line 2959
    move-result-object p2

    .line 2960
    const/16 v0, 0xf4

    .line 2961
    .line 2962
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2963
    .line 2964
    .line 2965
    goto/16 :goto_2

    .line 2966
    .line 2967
    :sswitch_cc
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2968
    .line 2969
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2970
    .line 2971
    .line 2972
    move-result-object p2

    .line 2973
    const/16 v0, 0xf3

    .line 2974
    .line 2975
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2976
    .line 2977
    .line 2978
    goto/16 :goto_2

    .line 2979
    .line 2980
    :sswitch_cd
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2981
    .line 2982
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2983
    .line 2984
    .line 2985
    move-result-object p2

    .line 2986
    const/16 v0, 0xf2

    .line 2987
    .line 2988
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 2989
    .line 2990
    .line 2991
    goto/16 :goto_2

    .line 2992
    .line 2993
    :sswitch_ce
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 2994
    .line 2995
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2996
    .line 2997
    .line 2998
    move-result-object p2

    .line 2999
    const/16 v0, 0xf1

    .line 3000
    .line 3001
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3002
    .line 3003
    .line 3004
    goto/16 :goto_2

    .line 3005
    .line 3006
    :sswitch_cf
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3007
    .line 3008
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3009
    .line 3010
    .line 3011
    move-result-object p2

    .line 3012
    const/16 v0, 0xb9

    .line 3013
    .line 3014
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3015
    .line 3016
    .line 3017
    goto/16 :goto_2

    .line 3018
    .line 3019
    :sswitch_d0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3020
    .line 3021
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3022
    .line 3023
    .line 3024
    move-result-object p2

    .line 3025
    const/16 v0, 0x5e

    .line 3026
    .line 3027
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3028
    .line 3029
    .line 3030
    goto/16 :goto_2

    .line 3031
    .line 3032
    :sswitch_d1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3033
    .line 3034
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3035
    .line 3036
    .line 3037
    move-result-object p2

    .line 3038
    const/16 v0, 0x8f

    .line 3039
    .line 3040
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3041
    .line 3042
    .line 3043
    goto/16 :goto_2

    .line 3044
    .line 3045
    :sswitch_d2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3046
    .line 3047
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3048
    .line 3049
    .line 3050
    move-result-object p2

    .line 3051
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3052
    .line 3053
    .line 3054
    goto/16 :goto_2

    .line 3055
    .line 3056
    :sswitch_d3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3057
    .line 3058
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3059
    .line 3060
    .line 3061
    move-result-object p2

    .line 3062
    const/16 v0, 0x33b

    .line 3063
    .line 3064
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3065
    .line 3066
    .line 3067
    goto/16 :goto_2

    .line 3068
    .line 3069
    :sswitch_d4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3070
    .line 3071
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3072
    .line 3073
    .line 3074
    move-result-object p2

    .line 3075
    const/16 v0, 0x172

    .line 3076
    .line 3077
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3078
    .line 3079
    .line 3080
    goto/16 :goto_2

    .line 3081
    .line 3082
    :sswitch_d5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3083
    .line 3084
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3085
    .line 3086
    .line 3087
    move-result-object p2

    .line 3088
    const/16 v0, 0x166

    .line 3089
    .line 3090
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3091
    .line 3092
    .line 3093
    goto/16 :goto_2

    .line 3094
    .line 3095
    :sswitch_d6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3096
    .line 3097
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3098
    .line 3099
    .line 3100
    move-result-object p2

    .line 3101
    const/16 v2, 0x488

    .line 3102
    .line 3103
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3104
    .line 3105
    .line 3106
    goto/16 :goto_2

    .line 3107
    .line 3108
    :sswitch_d7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3109
    .line 3110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3111
    .line 3112
    .line 3113
    move-result-object p2

    .line 3114
    const/16 v2, 0x487

    .line 3115
    .line 3116
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3117
    .line 3118
    .line 3119
    goto/16 :goto_2

    .line 3120
    .line 3121
    :sswitch_d8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3122
    .line 3123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3124
    .line 3125
    .line 3126
    move-result-object p2

    .line 3127
    const/16 v2, 0x283

    .line 3128
    .line 3129
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3130
    .line 3131
    .line 3132
    goto/16 :goto_2

    .line 3133
    .line 3134
    :sswitch_d9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3135
    .line 3136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3137
    .line 3138
    .line 3139
    move-result-object p2

    .line 3140
    const/16 v0, 0x62

    .line 3141
    .line 3142
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3143
    .line 3144
    .line 3145
    goto/16 :goto_2

    .line 3146
    .line 3147
    :sswitch_da
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3148
    .line 3149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3150
    .line 3151
    .line 3152
    move-result-object p2

    .line 3153
    const/16 v2, 0x118

    .line 3154
    .line 3155
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3156
    .line 3157
    .line 3158
    goto/16 :goto_2

    .line 3159
    .line 3160
    :sswitch_db
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3161
    .line 3162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3163
    .line 3164
    .line 3165
    move-result-object p2

    .line 3166
    const/16 v2, 0xfe

    .line 3167
    .line 3168
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3169
    .line 3170
    .line 3171
    goto/16 :goto_2

    .line 3172
    .line 3173
    :sswitch_dc
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3174
    .line 3175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3176
    .line 3177
    .line 3178
    move-result-object p2

    .line 3179
    const/16 v2, 0x190

    .line 3180
    .line 3181
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3182
    .line 3183
    .line 3184
    goto/16 :goto_2

    .line 3185
    .line 3186
    :sswitch_dd
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3187
    .line 3188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3189
    .line 3190
    .line 3191
    move-result-object p2

    .line 3192
    const/16 v0, 0xf8

    .line 3193
    .line 3194
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3195
    .line 3196
    .line 3197
    goto/16 :goto_2

    .line 3198
    .line 3199
    :sswitch_de
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3200
    .line 3201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3202
    .line 3203
    .line 3204
    move-result-object p2

    .line 3205
    const/16 v0, 0xf7

    .line 3206
    .line 3207
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3208
    .line 3209
    .line 3210
    goto/16 :goto_2

    .line 3211
    .line 3212
    :sswitch_df
    const-string/jumbo v0, "volume_balance"

    .line 3213
    .line 3214
    .line 3215
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 3216
    .line 3217
    .line 3218
    move-result v0

    .line 3219
    if-nez v0, :cond_5

    .line 3220
    .line 3221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3222
    .line 3223
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3224
    .line 3225
    .line 3226
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    .line 3228
    .line 3229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3230
    .line 3231
    .line 3232
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3233
    .line 3234
    .line 3235
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3236
    .line 3237
    .line 3238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3239
    .line 3240
    .line 3241
    move-result-object p1

    .line 3242
    invoke-static {v9, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    .line 3244
    .line 3245
    goto/16 :goto_1

    .line 3246
    .line 3247
    :cond_5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3248
    .line 3249
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3250
    .line 3251
    .line 3252
    move-result-object p2

    .line 3253
    const/16 v0, 0x12e

    .line 3254
    .line 3255
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3256
    .line 3257
    .line 3258
    goto/16 :goto_2

    .line 3259
    .line 3260
    :sswitch_e0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3261
    .line 3262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3263
    .line 3264
    .line 3265
    move-result-object p2

    .line 3266
    const/16 v2, 0xd7

    .line 3267
    .line 3268
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3269
    .line 3270
    .line 3271
    goto/16 :goto_2

    .line 3272
    .line 3273
    :sswitch_e1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3274
    .line 3275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3276
    .line 3277
    .line 3278
    move-result-object p2

    .line 3279
    const/16 v2, 0xd8

    .line 3280
    .line 3281
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3282
    .line 3283
    .line 3284
    goto/16 :goto_2

    .line 3285
    .line 3286
    :sswitch_e2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3287
    .line 3288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3289
    .line 3290
    .line 3291
    move-result-object p2

    .line 3292
    const/16 v0, 0x12d

    .line 3293
    .line 3294
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3295
    .line 3296
    .line 3297
    goto/16 :goto_2

    .line 3298
    .line 3299
    :sswitch_e3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3300
    .line 3301
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3302
    .line 3303
    .line 3304
    move-result-object p2

    .line 3305
    const/16 v0, 0x138

    .line 3306
    .line 3307
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3308
    .line 3309
    .line 3310
    goto/16 :goto_2

    .line 3311
    .line 3312
    :pswitch_c
    :sswitch_e4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3313
    .line 3314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3315
    .line 3316
    .line 3317
    move-result-object p2

    .line 3318
    const/16 v0, 0x5f

    .line 3319
    .line 3320
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3321
    .line 3322
    .line 3323
    goto/16 :goto_2

    .line 3324
    .line 3325
    :sswitch_e5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3326
    .line 3327
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3328
    .line 3329
    .line 3330
    move-result-object p2

    .line 3331
    const/16 v2, 0xe6

    .line 3332
    .line 3333
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3334
    .line 3335
    .line 3336
    goto/16 :goto_2

    .line 3337
    .line 3338
    :sswitch_e6
    const-string v0, "pcdn"

    .line 3339
    .line 3340
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 3341
    .line 3342
    .line 3343
    move-result v0

    .line 3344
    if-nez v0, :cond_6

    .line 3345
    .line 3346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3347
    .line 3348
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3349
    .line 3350
    .line 3351
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3352
    .line 3353
    .line 3354
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3355
    .line 3356
    .line 3357
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3358
    .line 3359
    .line 3360
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3361
    .line 3362
    .line 3363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3364
    .line 3365
    .line 3366
    move-result-object p1

    .line 3367
    invoke-static {v9, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    .line 3369
    .line 3370
    goto/16 :goto_1

    .line 3371
    .line 3372
    :cond_6
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 3373
    .line 3374
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3375
    .line 3376
    .line 3377
    move-result-object p2

    .line 3378
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3379
    .line 3380
    .line 3381
    goto/16 :goto_0

    .line 3382
    .line 3383
    :sswitch_e7
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 3384
    .line 3385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3386
    .line 3387
    .line 3388
    move-result-object p2

    .line 3389
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3390
    .line 3391
    .line 3392
    goto/16 :goto_0

    .line 3393
    .line 3394
    :sswitch_e8
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3395
    .line 3396
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3397
    .line 3398
    .line 3399
    move-result-object p2

    .line 3400
    const/16 v2, 0x65

    .line 3401
    .line 3402
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3403
    .line 3404
    .line 3405
    goto/16 :goto_2

    .line 3406
    .line 3407
    :sswitch_e9
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3408
    .line 3409
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3410
    .line 3411
    .line 3412
    move-result-object p2

    .line 3413
    const/16 v2, 0x63

    .line 3414
    .line 3415
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3416
    .line 3417
    .line 3418
    goto/16 :goto_2

    .line 3419
    .line 3420
    :sswitch_ea
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3421
    .line 3422
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3423
    .line 3424
    .line 3425
    move-result-object p2

    .line 3426
    const/16 v0, 0x3dd

    .line 3427
    .line 3428
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3429
    .line 3430
    .line 3431
    goto/16 :goto_2

    .line 3432
    .line 3433
    :sswitch_eb
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3434
    .line 3435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3436
    .line 3437
    .line 3438
    move-result-object p2

    .line 3439
    const/16 v0, 0xff

    .line 3440
    .line 3441
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3442
    .line 3443
    .line 3444
    goto/16 :goto_2

    .line 3445
    .line 3446
    :sswitch_ec
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3447
    .line 3448
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3449
    .line 3450
    .line 3451
    move-result-object p2

    .line 3452
    const/16 v0, 0xfa

    .line 3453
    .line 3454
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3455
    .line 3456
    .line 3457
    goto/16 :goto_2

    .line 3458
    .line 3459
    :sswitch_ed
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3460
    .line 3461
    mul-int/2addr p2, v5

    .line 3462
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3463
    .line 3464
    .line 3465
    move-result-object p2

    .line 3466
    invoke-direct {p1, v4, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3467
    .line 3468
    .line 3469
    goto/16 :goto_2

    .line 3470
    .line 3471
    :sswitch_ee
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3472
    .line 3473
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3474
    .line 3475
    .line 3476
    move-result-object p2

    .line 3477
    const/16 v0, 0xc9

    .line 3478
    .line 3479
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3480
    .line 3481
    .line 3482
    goto/16 :goto_2

    .line 3483
    .line 3484
    :sswitch_ef
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3485
    .line 3486
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3487
    .line 3488
    .line 3489
    move-result-object p2

    .line 3490
    const/16 v2, 0x5a

    .line 3491
    .line 3492
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3493
    .line 3494
    .line 3495
    goto/16 :goto_2

    .line 3496
    .line 3497
    :sswitch_f0
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3498
    .line 3499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3500
    .line 3501
    .line 3502
    move-result-object p2

    .line 3503
    invoke-direct {p1, v4, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3504
    .line 3505
    .line 3506
    goto/16 :goto_2

    .line 3507
    .line 3508
    :sswitch_f1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3509
    .line 3510
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3511
    .line 3512
    .line 3513
    move-result-object p2

    .line 3514
    const/16 v0, 0xbd

    .line 3515
    .line 3516
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3517
    .line 3518
    .line 3519
    goto/16 :goto_2

    .line 3520
    .line 3521
    :sswitch_f2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3522
    .line 3523
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3524
    .line 3525
    .line 3526
    move-result-object p2

    .line 3527
    const/16 v0, 0x9a

    .line 3528
    .line 3529
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3530
    .line 3531
    .line 3532
    goto/16 :goto_2

    .line 3533
    .line 3534
    :sswitch_f3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3535
    .line 3536
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3537
    .line 3538
    .line 3539
    move-result-object p2

    .line 3540
    const/16 v0, 0x8a

    .line 3541
    .line 3542
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3543
    .line 3544
    .line 3545
    goto/16 :goto_2

    .line 3546
    .line 3547
    :sswitch_f4
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3548
    .line 3549
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3550
    .line 3551
    .line 3552
    move-result-object p2

    .line 3553
    const/16 v0, 0x89

    .line 3554
    .line 3555
    invoke-direct {p1, v0, p2, v1, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3556
    .line 3557
    .line 3558
    goto/16 :goto_2

    .line 3559
    .line 3560
    :sswitch_f5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3561
    .line 3562
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3563
    .line 3564
    .line 3565
    move-result-object p2

    .line 3566
    const/16 v0, 0x51

    .line 3567
    .line 3568
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3569
    .line 3570
    .line 3571
    goto/16 :goto_2

    .line 3572
    .line 3573
    :sswitch_f6
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3574
    .line 3575
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3576
    .line 3577
    .line 3578
    move-result-object p2

    .line 3579
    const/16 v0, 0x43

    .line 3580
    .line 3581
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3582
    .line 3583
    .line 3584
    goto :goto_2

    .line 3585
    :cond_7
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3586
    .line 3587
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3588
    .line 3589
    .line 3590
    move-result-object p2

    .line 3591
    const/16 v0, 0xc0

    .line 3592
    .line 3593
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3594
    .line 3595
    .line 3596
    goto :goto_2

    .line 3597
    :cond_8
    if-gez p2, :cond_a

    .line 3598
    .line 3599
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 3600
    goto :goto_2

    .line 3601
    :cond_a
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3602
    .line 3603
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3604
    .line 3605
    .line 3606
    move-result-object p2

    .line 3607
    const/16 v0, 0x9f

    .line 3608
    .line 3609
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3610
    .line 3611
    .line 3612
    goto :goto_2

    .line 3613
    :cond_b
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3614
    .line 3615
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3616
    .line 3617
    .line 3618
    move-result-object p2

    .line 3619
    const/16 v0, 0xc5

    .line 3620
    .line 3621
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3622
    .line 3623
    .line 3624
    goto :goto_2

    .line 3625
    :cond_c
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3626
    .line 3627
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3628
    .line 3629
    .line 3630
    move-result-object p2

    .line 3631
    invoke-direct {p1, v2, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3632
    .line 3633
    .line 3634
    goto :goto_2

    .line 3635
    :cond_d
    :pswitch_d
    :sswitch_f7
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 3636
    .line 3637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3638
    .line 3639
    .line 3640
    move-result-object p2

    .line 3641
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3642
    .line 3643
    .line 3644
    goto/16 :goto_0

    .line 3645
    .line 3646
    :cond_e
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3647
    .line 3648
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3649
    .line 3650
    .line 3651
    move-result-object p2

    .line 3652
    const/16 v0, 0x26

    .line 3653
    .line 3654
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3655
    .line 3656
    .line 3657
    goto :goto_2

    .line 3658
    :cond_f
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3659
    .line 3660
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3661
    .line 3662
    .line 3663
    move-result-object p2

    .line 3664
    const/16 v0, 0x25

    .line 3665
    .line 3666
    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 3667
    .line 3668
    .line 3669
    goto :goto_2

    .line 3670
    :cond_10
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 3671
    .line 3672
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3673
    .line 3674
    .line 3675
    move-result-object p2

    .line 3676
    const/16 v2, 0x18

    .line 3677
    .line 3678
    invoke-direct {p1, v2, p2, v1, v0}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 3679
    .line 3680
    .line 3681
    :goto_2
    return-object p1

    .line 3682
    nop

    .line 3683
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_f6
        0xb -> :sswitch_f5
        0x18 -> :sswitch_f4
        0x19 -> :sswitch_f3
        0x1a -> :sswitch_f2
        0x1b -> :sswitch_f7
        0x1c -> :sswitch_f7
        0x55 -> :sswitch_f7
        0x65 -> :sswitch_f1
        0x6e -> :sswitch_f7
        0x76 -> :sswitch_f0
        0x78 -> :sswitch_ef
        0xc6 -> :sswitch_ee
        0xc8 -> :sswitch_ed
        0xfa -> :sswitch_ec
        0xff -> :sswitch_eb
        0x100 -> :sswitch_ea
        0x101 -> :sswitch_e9
        0x102 -> :sswitch_e8
        0x12b -> :sswitch_e7
        0x12e -> :sswitch_e6
        0x136 -> :sswitch_e5
        0x137 -> :sswitch_e4
        0x138 -> :sswitch_f7
        0x139 -> :sswitch_f7
        0x13a -> :sswitch_e3
        0x141 -> :sswitch_e2
        0x143 -> :sswitch_e1
        0x144 -> :sswitch_e0
        0x149 -> :sswitch_df
        0x14a -> :sswitch_de
        0x14b -> :sswitch_dd
        0x14c -> :sswitch_dc
        0x14d -> :sswitch_db
        0x14e -> :sswitch_f7
        0x14f -> :sswitch_f7
        0x153 -> :sswitch_da
        0x154 -> :sswitch_d9
        0x157 -> :sswitch_d8
        0x164 -> :sswitch_d7
        0x165 -> :sswitch_d6
        0x166 -> :sswitch_d5
        0x172 -> :sswitch_d4
        0x173 -> :sswitch_d3
        0x190 -> :sswitch_f7
        0x191 -> :sswitch_d2
        0x192 -> :sswitch_d1
        0x193 -> :sswitch_f7
        0x19a -> :sswitch_f7
        0x19f -> :sswitch_d0
        0x1a1 -> :sswitch_cf
        0x1a3 -> :sswitch_f7
        0x1a4 -> :sswitch_ce
        0x1a5 -> :sswitch_cd
        0x1a6 -> :sswitch_cc
        0x1a7 -> :sswitch_cb
        0x1a8 -> :sswitch_f7
        0x1a9 -> :sswitch_f7
        0x1ab -> :sswitch_f7
        0x1af -> :sswitch_ca
        0x1c2 -> :sswitch_f7
        0x1d9 -> :sswitch_c9
        0x1da -> :sswitch_c8
        0x1db -> :sswitch_c7
        0x1dc -> :sswitch_c6
        0x1de -> :sswitch_c5
        0x1e1 -> :sswitch_c4
        0x1e2 -> :sswitch_c3
        0x1e3 -> :sswitch_c2
        0x1e4 -> :sswitch_c1
        0x1e5 -> :sswitch_c0
        0x1e6 -> :sswitch_f7
        0x1e7 -> :sswitch_f7
        0x1e8 -> :sswitch_bf
        0x1e9 -> :sswitch_f7
        0x1ea -> :sswitch_be
        0x1eb -> :sswitch_bd
        0x1ec -> :sswitch_f7
        0x1ed -> :sswitch_f7
        0x1ef -> :sswitch_bc
        0x1f0 -> :sswitch_bb
        0x1f1 -> :sswitch_f7
        0x1f2 -> :sswitch_ba
        0x1f3 -> :sswitch_b9
        0x1f4 -> :sswitch_f7
        0x1f5 -> :sswitch_f7
        0x1f6 -> :sswitch_f7
        0x1f7 -> :sswitch_f7
        0x1fb -> :sswitch_f7
        0x1fc -> :sswitch_b8
        0x1fd -> :sswitch_b7
        0x1ff -> :sswitch_b6
        0x200 -> :sswitch_b5
        0x203 -> :sswitch_b4
        0x204 -> :sswitch_b3
        0x205 -> :sswitch_b2
        0x206 -> :sswitch_b1
        0x207 -> :sswitch_f7
        0x208 -> :sswitch_f7
        0x20d -> :sswitch_f7
        0x218 -> :sswitch_f7
        0x219 -> :sswitch_f7
        0x21d -> :sswitch_b0
        0x21e -> :sswitch_f7
        0x21f -> :sswitch_af
        0x220 -> :sswitch_f7
        0x224 -> :sswitch_ae
        0x226 -> :sswitch_ad
        0x227 -> :sswitch_ac
        0x228 -> :sswitch_ab
        0x22d -> :sswitch_aa
        0x22e -> :sswitch_f7
        0x22f -> :sswitch_a9
        0x230 -> :sswitch_a8
        0x231 -> :sswitch_a7
        0x232 -> :sswitch_a6
        0x233 -> :sswitch_a5
        0x234 -> :sswitch_a4
        0x235 -> :sswitch_a3
        0x236 -> :sswitch_a2
        0x237 -> :sswitch_a1
        0x238 -> :sswitch_a0
        0x239 -> :sswitch_9f
        0x23a -> :sswitch_9e
        0x23b -> :sswitch_f7
        0x23c -> :sswitch_9d
        0x23d -> :sswitch_f7
        0x23f -> :sswitch_9c
        0x240 -> :sswitch_9b
        0x241 -> :sswitch_9a
        0x242 -> :sswitch_99
        0x243 -> :sswitch_98
        0x244 -> :sswitch_97
        0x245 -> :sswitch_96
        0x246 -> :sswitch_95
        0x247 -> :sswitch_f7
        0x248 -> :sswitch_f7
        0x249 -> :sswitch_94
        0x24a -> :sswitch_93
        0x24b -> :sswitch_f7
        0x24c -> :sswitch_f7
        0x24f -> :sswitch_92
        0x250 -> :sswitch_91
        0x251 -> :sswitch_90
        0x252 -> :sswitch_8f
        0x253 -> :sswitch_8e
        0x255 -> :sswitch_8d
        0x256 -> :sswitch_8c
        0x258 -> :sswitch_f7
        0x259 -> :sswitch_f7
        0x25a -> :sswitch_8b
        0x25b -> :sswitch_f7
        0x25e -> :sswitch_f7
        0x25f -> :sswitch_8a
        0x260 -> :sswitch_89
        0x261 -> :sswitch_88
        0x262 -> :sswitch_87
        0x263 -> :sswitch_86
        0x265 -> :sswitch_85
        0x26c -> :sswitch_84
        0x28a -> :sswitch_f7
        0x28c -> :sswitch_f7
        0x290 -> :sswitch_f7
        0x291 -> :sswitch_83
        0x292 -> :sswitch_82
        0x295 -> :sswitch_f7
        0x297 -> :sswitch_f7
        0x298 -> :sswitch_81
        0x299 -> :sswitch_80
        0x29a -> :sswitch_7f
        0x29c -> :sswitch_83
        0x29d -> :sswitch_7e
        0x29e -> :sswitch_7d
        0x29f -> :sswitch_f7
        0x2a3 -> :sswitch_7c
        0x2a5 -> :sswitch_7b
        0x2a6 -> :sswitch_7a
        0x2a7 -> :sswitch_79
        0x2a8 -> :sswitch_78
        0x2a9 -> :sswitch_f7
        0x2aa -> :sswitch_f7
        0x2ab -> :sswitch_77
        0x2ad -> :sswitch_76
        0x2ae -> :sswitch_75
        0x2af -> :sswitch_74
        0x2b0 -> :sswitch_73
        0x2bc -> :sswitch_72
        0x2bf -> :sswitch_71
        0x2c1 -> :sswitch_70
        0x2c2 -> :sswitch_6f
        0x2c3 -> :sswitch_f7
        0x2c7 -> :sswitch_f7
        0x2c8 -> :sswitch_f7
        0x2ca -> :sswitch_6e
        0x2cd -> :sswitch_6d
        0x2d1 -> :sswitch_f7
        0x2e6 -> :sswitch_f7
        0x2e8 -> :sswitch_6c
        0x2ea -> :sswitch_6b
        0x2eb -> :sswitch_6a
        0x320 -> :sswitch_69
        0x321 -> :sswitch_f7
        0x352 -> :sswitch_68
        0x353 -> :sswitch_67
        0x354 -> :sswitch_66
        0x355 -> :sswitch_65
        0x356 -> :sswitch_64
        0x357 -> :sswitch_63
        0x358 -> :sswitch_62
        0x359 -> :sswitch_61
        0x35a -> :sswitch_60
        0x35b -> :sswitch_5f
        0x35c -> :sswitch_5e
        0x35d -> :sswitch_5d
        0x35e -> :sswitch_5c
        0x35f -> :sswitch_5b
        0x360 -> :sswitch_5a
        0x3b6 -> :sswitch_f7
        0x3b7 -> :sswitch_f7
        0x3b8 -> :sswitch_59
        0x3b9 -> :sswitch_58
        0x3ba -> :sswitch_57
        0x3bb -> :sswitch_56
        0x3bc -> :sswitch_55
        0x3be -> :sswitch_54
        0x3bf -> :sswitch_53
        0x3c2 -> :sswitch_52
        0x3c3 -> :sswitch_51
        0x3d0 -> :sswitch_50
        0x3d1 -> :sswitch_4f
        0x3d2 -> :sswitch_4e
        0x3d3 -> :sswitch_4d
        0x3d4 -> :sswitch_4c
        0x3d5 -> :sswitch_4b
        0x3d6 -> :sswitch_f7
        0x3d7 -> :sswitch_4a
        0x3d8 -> :sswitch_49
        0x3d9 -> :sswitch_48
        0x3da -> :sswitch_47
        0x3db -> :sswitch_46
        0x3dc -> :sswitch_45
        0x3dd -> :sswitch_44
        0x3de -> :sswitch_43
        0x3df -> :sswitch_42
        0x3e0 -> :sswitch_41
        0x3e1 -> :sswitch_40
        0x3e2 -> :sswitch_3f
        0x3e3 -> :sswitch_3e
        0x3e4 -> :sswitch_3d
        0x3e6 -> :sswitch_3c
        0x42e -> :sswitch_3b
        0x431 -> :sswitch_3a
        0x44c -> :sswitch_39
        0x44d -> :sswitch_38
        0x451 -> :sswitch_37
        0x456 -> :sswitch_36
        0x457 -> :sswitch_35
        0x458 -> :sswitch_34
        0x459 -> :sswitch_33
        0x45a -> :sswitch_32
        0x45b -> :sswitch_31
        0x45d -> :sswitch_30
        0x45e -> :sswitch_2f
        0x45f -> :sswitch_2e
        0x460 -> :sswitch_2d
        0x461 -> :sswitch_2c
        0x462 -> :sswitch_2b
        0x463 -> :sswitch_2a
        0x464 -> :sswitch_29
        0x465 -> :sswitch_28
        0x466 -> :sswitch_27
        0x467 -> :sswitch_26
        0x468 -> :sswitch_25
        0x469 -> :sswitch_24
        0x46a -> :sswitch_f7
        0x46e -> :sswitch_23
        0x4b0 -> :sswitch_22
        0x4b2 -> :sswitch_21
        0x4b9 -> :sswitch_20
        0x4ba -> :sswitch_1f
        0x4bb -> :sswitch_1e
        0x4bc -> :sswitch_1d
        0x4bd -> :sswitch_1c
        0x4be -> :sswitch_1b
        0x4bf -> :sswitch_1a
        0x4c0 -> :sswitch_19
        0x4c1 -> :sswitch_18
        0x4c2 -> :sswitch_f7
        0x4c3 -> :sswitch_f7
        0x4c4 -> :sswitch_17
        0x4c5 -> :sswitch_16
        0x4c6 -> :sswitch_15
        0x4c7 -> :sswitch_14
        0x4c8 -> :sswitch_13
        0x501 -> :sswitch_12
        0x514 -> :sswitch_11
        0x515 -> :sswitch_f7
        0x516 -> :sswitch_10
        0x578 -> :sswitch_f
        0x579 -> :sswitch_e
        0x57a -> :sswitch_f7
        0x57c -> :sswitch_d
        0x57d -> :sswitch_c
        0x57e -> :sswitch_b
        0x586 -> :sswitch_f7
        0x5e0 -> :sswitch_a
        0xfa1 -> :sswitch_9
        0xfa2 -> :sswitch_8
        0xfa3 -> :sswitch_7
        0xfa4 -> :sswitch_f7
        0xfa5 -> :sswitch_6
        0xfa7 -> :sswitch_5
        0xfa8 -> :sswitch_4
        0xfa9 -> :sswitch_f7
        0xfaa -> :sswitch_f7
        0xfae -> :sswitch_f7
        0xfb0 -> :sswitch_f7
        0xfb1 -> :sswitch_3
        0xfb2 -> :sswitch_2
        0xfb6 -> :sswitch_f7
        0xfb7 -> :sswitch_1
        0xfb8 -> :sswitch_0
        0x1388 -> :sswitch_f7
        0x1392 -> :sswitch_f7
    .end sparse-switch

    .line 3684
    .line 3685
    .line 3686
    .line 3687
    .line 3688
    .line 3689
    .line 3690
    .line 3691
    .line 3692
    .line 3693
    .line 3694
    .line 3695
    .line 3696
    .line 3697
    .line 3698
    .line 3699
    .line 3700
    .line 3701
    .line 3702
    .line 3703
    .line 3704
    .line 3705
    .line 3706
    .line 3707
    .line 3708
    .line 3709
    .line 3710
    .line 3711
    .line 3712
    .line 3713
    .line 3714
    .line 3715
    .line 3716
    .line 3717
    .line 3718
    .line 3719
    .line 3720
    .line 3721
    .line 3722
    .line 3723
    .line 3724
    .line 3725
    .line 3726
    .line 3727
    .line 3728
    .line 3729
    .line 3730
    .line 3731
    .line 3732
    .line 3733
    .line 3734
    .line 3735
    .line 3736
    .line 3737
    .line 3738
    .line 3739
    .line 3740
    .line 3741
    .line 3742
    .line 3743
    .line 3744
    .line 3745
    .line 3746
    .line 3747
    .line 3748
    .line 3749
    .line 3750
    .line 3751
    .line 3752
    .line 3753
    .line 3754
    .line 3755
    .line 3756
    .line 3757
    .line 3758
    .line 3759
    .line 3760
    .line 3761
    .line 3762
    .line 3763
    .line 3764
    .line 3765
    .line 3766
    .line 3767
    .line 3768
    .line 3769
    .line 3770
    .line 3771
    .line 3772
    .line 3773
    .line 3774
    .line 3775
    .line 3776
    .line 3777
    .line 3778
    .line 3779
    .line 3780
    .line 3781
    .line 3782
    .line 3783
    .line 3784
    .line 3785
    .line 3786
    .line 3787
    .line 3788
    .line 3789
    .line 3790
    .line 3791
    .line 3792
    .line 3793
    .line 3794
    .line 3795
    .line 3796
    .line 3797
    .line 3798
    .line 3799
    .line 3800
    .line 3801
    .line 3802
    .line 3803
    .line 3804
    .line 3805
    .line 3806
    .line 3807
    .line 3808
    .line 3809
    .line 3810
    .line 3811
    .line 3812
    .line 3813
    .line 3814
    .line 3815
    .line 3816
    .line 3817
    .line 3818
    .line 3819
    .line 3820
    .line 3821
    .line 3822
    .line 3823
    .line 3824
    .line 3825
    .line 3826
    .line 3827
    .line 3828
    .line 3829
    .line 3830
    .line 3831
    .line 3832
    .line 3833
    .line 3834
    .line 3835
    .line 3836
    .line 3837
    .line 3838
    .line 3839
    .line 3840
    .line 3841
    .line 3842
    .line 3843
    .line 3844
    .line 3845
    .line 3846
    .line 3847
    .line 3848
    .line 3849
    .line 3850
    .line 3851
    .line 3852
    .line 3853
    .line 3854
    .line 3855
    .line 3856
    .line 3857
    .line 3858
    .line 3859
    .line 3860
    .line 3861
    .line 3862
    .line 3863
    .line 3864
    .line 3865
    .line 3866
    .line 3867
    .line 3868
    .line 3869
    .line 3870
    .line 3871
    .line 3872
    .line 3873
    .line 3874
    .line 3875
    .line 3876
    .line 3877
    .line 3878
    .line 3879
    .line 3880
    .line 3881
    .line 3882
    .line 3883
    .line 3884
    .line 3885
    .line 3886
    .line 3887
    .line 3888
    .line 3889
    .line 3890
    .line 3891
    .line 3892
    .line 3893
    .line 3894
    .line 3895
    .line 3896
    .line 3897
    .line 3898
    .line 3899
    .line 3900
    .line 3901
    .line 3902
    .line 3903
    .line 3904
    .line 3905
    .line 3906
    .line 3907
    .line 3908
    .line 3909
    .line 3910
    .line 3911
    .line 3912
    .line 3913
    .line 3914
    .line 3915
    .line 3916
    .line 3917
    .line 3918
    .line 3919
    .line 3920
    .line 3921
    .line 3922
    .line 3923
    .line 3924
    .line 3925
    .line 3926
    .line 3927
    .line 3928
    .line 3929
    .line 3930
    .line 3931
    .line 3932
    .line 3933
    .line 3934
    .line 3935
    .line 3936
    .line 3937
    .line 3938
    .line 3939
    .line 3940
    .line 3941
    .line 3942
    .line 3943
    .line 3944
    .line 3945
    .line 3946
    .line 3947
    .line 3948
    .line 3949
    .line 3950
    .line 3951
    .line 3952
    .line 3953
    .line 3954
    .line 3955
    .line 3956
    .line 3957
    .line 3958
    .line 3959
    .line 3960
    .line 3961
    .line 3962
    .line 3963
    .line 3964
    .line 3965
    .line 3966
    .line 3967
    .line 3968
    .line 3969
    .line 3970
    .line 3971
    .line 3972
    .line 3973
    .line 3974
    .line 3975
    .line 3976
    .line 3977
    .line 3978
    .line 3979
    .line 3980
    .line 3981
    .line 3982
    .line 3983
    .line 3984
    .line 3985
    .line 3986
    .line 3987
    .line 3988
    .line 3989
    .line 3990
    .line 3991
    .line 3992
    .line 3993
    .line 3994
    .line 3995
    .line 3996
    .line 3997
    .line 3998
    .line 3999
    .line 4000
    .line 4001
    .line 4002
    .line 4003
    .line 4004
    .line 4005
    .line 4006
    .line 4007
    .line 4008
    .line 4009
    .line 4010
    .line 4011
    .line 4012
    .line 4013
    .line 4014
    .line 4015
    .line 4016
    .line 4017
    .line 4018
    .line 4019
    .line 4020
    .line 4021
    .line 4022
    .line 4023
    .line 4024
    .line 4025
    .line 4026
    .line 4027
    .line 4028
    .line 4029
    .line 4030
    .line 4031
    .line 4032
    .line 4033
    .line 4034
    .line 4035
    .line 4036
    .line 4037
    .line 4038
    .line 4039
    .line 4040
    .line 4041
    .line 4042
    .line 4043
    .line 4044
    .line 4045
    .line 4046
    .line 4047
    .line 4048
    .line 4049
    .line 4050
    .line 4051
    .line 4052
    .line 4053
    .line 4054
    .line 4055
    .line 4056
    .line 4057
    .line 4058
    .line 4059
    .line 4060
    .line 4061
    .line 4062
    .line 4063
    .line 4064
    .line 4065
    .line 4066
    .line 4067
    .line 4068
    .line 4069
    .line 4070
    .line 4071
    .line 4072
    .line 4073
    .line 4074
    .line 4075
    .line 4076
    .line 4077
    .line 4078
    .line 4079
    .line 4080
    .line 4081
    .line 4082
    .line 4083
    .line 4084
    .line 4085
    .line 4086
    .line 4087
    .line 4088
    .line 4089
    .line 4090
    .line 4091
    .line 4092
    .line 4093
    .line 4094
    .line 4095
    .line 4096
    .line 4097
    .line 4098
    .line 4099
    .line 4100
    .line 4101
    .line 4102
    .line 4103
    .line 4104
    .line 4105
    .line 4106
    .line 4107
    .line 4108
    .line 4109
    .line 4110
    .line 4111
    .line 4112
    .line 4113
    .line 4114
    .line 4115
    .line 4116
    .line 4117
    .line 4118
    .line 4119
    .line 4120
    .line 4121
    .line 4122
    .line 4123
    .line 4124
    .line 4125
    .line 4126
    .line 4127
    .line 4128
    .line 4129
    .line 4130
    .line 4131
    .line 4132
    .line 4133
    .line 4134
    .line 4135
    .line 4136
    .line 4137
    .line 4138
    .line 4139
    .line 4140
    .line 4141
    .line 4142
    .line 4143
    .line 4144
    .line 4145
    .line 4146
    .line 4147
    .line 4148
    .line 4149
    .line 4150
    .line 4151
    .line 4152
    .line 4153
    .line 4154
    .line 4155
    .line 4156
    .line 4157
    .line 4158
    .line 4159
    .line 4160
    .line 4161
    .line 4162
    .line 4163
    .line 4164
    .line 4165
    .line 4166
    .line 4167
    .line 4168
    .line 4169
    .line 4170
    .line 4171
    .line 4172
    .line 4173
    .line 4174
    .line 4175
    .line 4176
    .line 4177
    .line 4178
    .line 4179
    .line 4180
    .line 4181
    .line 4182
    .line 4183
    .line 4184
    .line 4185
    .line 4186
    .line 4187
    .line 4188
    .line 4189
    .line 4190
    .line 4191
    .line 4192
    .line 4193
    .line 4194
    .line 4195
    .line 4196
    .line 4197
    .line 4198
    .line 4199
    .line 4200
    .line 4201
    .line 4202
    .line 4203
    .line 4204
    .line 4205
    .line 4206
    .line 4207
    .line 4208
    .line 4209
    .line 4210
    .line 4211
    .line 4212
    .line 4213
    .line 4214
    .line 4215
    .line 4216
    .line 4217
    .line 4218
    .line 4219
    .line 4220
    .line 4221
    .line 4222
    .line 4223
    .line 4224
    .line 4225
    .line 4226
    .line 4227
    .line 4228
    .line 4229
    .line 4230
    .line 4231
    .line 4232
    .line 4233
    .line 4234
    .line 4235
    .line 4236
    .line 4237
    .line 4238
    .line 4239
    .line 4240
    .line 4241
    .line 4242
    .line 4243
    .line 4244
    .line 4245
    .line 4246
    .line 4247
    .line 4248
    .line 4249
    .line 4250
    .line 4251
    .line 4252
    .line 4253
    .line 4254
    .line 4255
    .line 4256
    .line 4257
    .line 4258
    .line 4259
    .line 4260
    .line 4261
    .line 4262
    .line 4263
    .line 4264
    .line 4265
    .line 4266
    .line 4267
    .line 4268
    .line 4269
    .line 4270
    .line 4271
    .line 4272
    .line 4273
    .line 4274
    .line 4275
    .line 4276
    .line 4277
    .line 4278
    .line 4279
    .line 4280
    .line 4281
    .line 4282
    .line 4283
    .line 4284
    .line 4285
    .line 4286
    .line 4287
    .line 4288
    .line 4289
    .line 4290
    .line 4291
    .line 4292
    .line 4293
    .line 4294
    .line 4295
    .line 4296
    .line 4297
    .line 4298
    .line 4299
    .line 4300
    .line 4301
    .line 4302
    .line 4303
    .line 4304
    .line 4305
    .line 4306
    .line 4307
    .line 4308
    .line 4309
    .line 4310
    .line 4311
    .line 4312
    .line 4313
    .line 4314
    .line 4315
    .line 4316
    .line 4317
    .line 4318
    .line 4319
    .line 4320
    .line 4321
    .line 4322
    .line 4323
    .line 4324
    .line 4325
    .line 4326
    .line 4327
    .line 4328
    .line 4329
    .line 4330
    .line 4331
    .line 4332
    .line 4333
    .line 4334
    .line 4335
    .line 4336
    .line 4337
    .line 4338
    .line 4339
    .line 4340
    .line 4341
    .line 4342
    .line 4343
    .line 4344
    .line 4345
    .line 4346
    .line 4347
    .line 4348
    .line 4349
    .line 4350
    .line 4351
    .line 4352
    .line 4353
    .line 4354
    .line 4355
    .line 4356
    .line 4357
    .line 4358
    .line 4359
    .line 4360
    .line 4361
    .line 4362
    .line 4363
    .line 4364
    .line 4365
    .line 4366
    .line 4367
    .line 4368
    .line 4369
    .line 4370
    .line 4371
    .line 4372
    .line 4373
    .line 4374
    .line 4375
    .line 4376
    .line 4377
    .line 4378
    .line 4379
    .line 4380
    .line 4381
    .line 4382
    .line 4383
    .line 4384
    .line 4385
    .line 4386
    .line 4387
    .line 4388
    .line 4389
    .line 4390
    .line 4391
    .line 4392
    .line 4393
    .line 4394
    .line 4395
    .line 4396
    .line 4397
    .line 4398
    .line 4399
    .line 4400
    .line 4401
    .line 4402
    .line 4403
    .line 4404
    .line 4405
    .line 4406
    .line 4407
    .line 4408
    .line 4409
    .line 4410
    .line 4411
    .line 4412
    .line 4413
    .line 4414
    .line 4415
    .line 4416
    .line 4417
    .line 4418
    .line 4419
    .line 4420
    .line 4421
    .line 4422
    .line 4423
    .line 4424
    .line 4425
    .line 4426
    .line 4427
    .line 4428
    .line 4429
    .line 4430
    .line 4431
    .line 4432
    .line 4433
    .line 4434
    .line 4435
    .line 4436
    .line 4437
    .line 4438
    .line 4439
    .line 4440
    .line 4441
    .line 4442
    .line 4443
    .line 4444
    .line 4445
    .line 4446
    .line 4447
    .line 4448
    .line 4449
    .line 4450
    .line 4451
    .line 4452
    .line 4453
    .line 4454
    .line 4455
    .line 4456
    .line 4457
    .line 4458
    .line 4459
    .line 4460
    .line 4461
    .line 4462
    .line 4463
    .line 4464
    .line 4465
    .line 4466
    .line 4467
    .line 4468
    .line 4469
    .line 4470
    .line 4471
    .line 4472
    .line 4473
    .line 4474
    .line 4475
    .line 4476
    .line 4477
    .line 4478
    .line 4479
    .line 4480
    .line 4481
    .line 4482
    .line 4483
    .line 4484
    .line 4485
    .line 4486
    .line 4487
    .line 4488
    .line 4489
    .line 4490
    .line 4491
    .line 4492
    .line 4493
    .line 4494
    .line 4495
    .line 4496
    .line 4497
    .line 4498
    .line 4499
    .line 4500
    .line 4501
    .line 4502
    .line 4503
    .line 4504
    .line 4505
    .line 4506
    .line 4507
    .line 4508
    .line 4509
    .line 4510
    .line 4511
    .line 4512
    .line 4513
    .line 4514
    .line 4515
    .line 4516
    .line 4517
    .line 4518
    .line 4519
    .line 4520
    .line 4521
    .line 4522
    .line 4523
    .line 4524
    .line 4525
    .line 4526
    .line 4527
    .line 4528
    .line 4529
    .line 4530
    .line 4531
    .line 4532
    .line 4533
    .line 4534
    .line 4535
    .line 4536
    .line 4537
    .line 4538
    .line 4539
    .line 4540
    .line 4541
    .line 4542
    .line 4543
    .line 4544
    .line 4545
    .line 4546
    .line 4547
    .line 4548
    .line 4549
    .line 4550
    .line 4551
    .line 4552
    .line 4553
    .line 4554
    .line 4555
    .line 4556
    .line 4557
    .line 4558
    .line 4559
    .line 4560
    .line 4561
    .line 4562
    .line 4563
    .line 4564
    .line 4565
    .line 4566
    .line 4567
    .line 4568
    .line 4569
    .line 4570
    .line 4571
    .line 4572
    .line 4573
    .line 4574
    .line 4575
    .line 4576
    .line 4577
    .line 4578
    .line 4579
    .line 4580
    .line 4581
    .line 4582
    .line 4583
    .line 4584
    .line 4585
    .line 4586
    .line 4587
    .line 4588
    .line 4589
    .line 4590
    .line 4591
    .line 4592
    .line 4593
    .line 4594
    .line 4595
    .line 4596
    .line 4597
    .line 4598
    .line 4599
    .line 4600
    .line 4601
    .line 4602
    .line 4603
    .line 4604
    .line 4605
    .line 4606
    .line 4607
    .line 4608
    .line 4609
    .line 4610
    .line 4611
    .line 4612
    .line 4613
    .line 4614
    .line 4615
    .line 4616
    .line 4617
    .line 4618
    .line 4619
    .line 4620
    .line 4621
    .line 4622
    .line 4623
    .line 4624
    .line 4625
    .line 4626
    .line 4627
    .line 4628
    .line 4629
    .line 4630
    .line 4631
    .line 4632
    .line 4633
    .line 4634
    .line 4635
    .line 4636
    .line 4637
    .line 4638
    .line 4639
    .line 4640
    .line 4641
    .line 4642
    .line 4643
    .line 4644
    .line 4645
    .line 4646
    .line 4647
    .line 4648
    .line 4649
    .line 4650
    .line 4651
    .line 4652
    .line 4653
    .line 4654
    .line 4655
    .line 4656
    .line 4657
    .line 4658
    .line 4659
    .line 4660
    .line 4661
    .line 4662
    .line 4663
    .line 4664
    .line 4665
    .line 4666
    .line 4667
    .line 4668
    .line 4669
    .line 4670
    .line 4671
    .line 4672
    .line 4673
    .line 4674
    .line 4675
    .line 4676
    .line 4677
    .line 4678
    .line 4679
    .line 4680
    .line 4681
    .line 4682
    .line 4683
    .line 4684
    .line 4685
    .line 4686
    .line 4687
    .line 4688
    .line 4689
    .line 4690
    .line 4691
    .line 4692
    .line 4693
    .line 4694
    .line 4695
    .line 4696
    .line 4697
    .line 4698
    .line 4699
    .line 4700
    .line 4701
    .line 4702
    .line 4703
    .line 4704
    .line 4705
    .line 4706
    .line 4707
    .line 4708
    .line 4709
    .line 4710
    .line 4711
    .line 4712
    .line 4713
    .line 4714
    .line 4715
    .line 4716
    .line 4717
    .line 4718
    .line 4719
    .line 4720
    .line 4721
    .line 4722
    .line 4723
    .line 4724
    .line 4725
    .line 4726
    .line 4727
    .line 4728
    .line 4729
    .line 4730
    .line 4731
    .line 4732
    .line 4733
    .line 4734
    .line 4735
    .line 4736
    .line 4737
    .line 4738
    .line 4739
    .line 4740
    .line 4741
    .line 4742
    .line 4743
    .line 4744
    .line 4745
    .line 4746
    .line 4747
    .line 4748
    .line 4749
    .line 4750
    .line 4751
    .line 4752
    .line 4753
    .line 4754
    .line 4755
    .line 4756
    .line 4757
    .line 4758
    .line 4759
    .line 4760
    .line 4761
    .line 4762
    .line 4763
    .line 4764
    .line 4765
    .line 4766
    .line 4767
    .line 4768
    .line 4769
    .line 4770
    .line 4771
    .line 4772
    .line 4773
    .line 4774
    .line 4775
    .line 4776
    .line 4777
    .line 4778
    .line 4779
    .line 4780
    .line 4781
    .line 4782
    .line 4783
    .line 4784
    .line 4785
    .line 4786
    .line 4787
    .line 4788
    .line 4789
    .line 4790
    .line 4791
    .line 4792
    .line 4793
    .line 4794
    .line 4795
    .line 4796
    .line 4797
    .line 4798
    .line 4799
    .line 4800
    .line 4801
    .line 4802
    .line 4803
    .line 4804
    .line 4805
    .line 4806
    .line 4807
    .line 4808
    .line 4809
    .line 4810
    .line 4811
    .line 4812
    .line 4813
    .line 4814
    .line 4815
    .line 4816
    .line 4817
    .line 4818
    .line 4819
    .line 4820
    .line 4821
    .line 4822
    .line 4823
    .line 4824
    .line 4825
    .line 4826
    .line 4827
    .line 4828
    .line 4829
    .line 4830
    .line 4831
    .line 4832
    .line 4833
    .line 4834
    .line 4835
    .line 4836
    .line 4837
    .line 4838
    .line 4839
    .line 4840
    .line 4841
    .line 4842
    .line 4843
    .line 4844
    .line 4845
    .line 4846
    .line 4847
    .line 4848
    .line 4849
    .line 4850
    .line 4851
    .line 4852
    .line 4853
    .line 4854
    .line 4855
    .line 4856
    .line 4857
    .line 4858
    .line 4859
    .line 4860
    .line 4861
    .line 4862
    .line 4863
    .line 4864
    .line 4865
    .line 4866
    .line 4867
    .line 4868
    .line 4869
    .line 4870
    .line 4871
    .line 4872
    .line 4873
    .line 4874
    .line 4875
    .line 4876
    .line 4877
    .line 4878
    .line 4879
    .line 4880
    .line 4881
    .line 4882
    .line 4883
    .line 4884
    .line 4885
    .line 4886
    .line 4887
    .line 4888
    .line 4889
    .line 4890
    .line 4891
    .line 4892
    .line 4893
    .line 4894
    .line 4895
    .line 4896
    .line 4897
    .line 4898
    .line 4899
    .line 4900
    .line 4901
    .line 4902
    .line 4903
    .line 4904
    .line 4905
    .line 4906
    .line 4907
    .line 4908
    .line 4909
    .line 4910
    .line 4911
    .line 4912
    .line 4913
    .line 4914
    .line 4915
    .line 4916
    .line 4917
    .line 4918
    .line 4919
    .line 4920
    .line 4921
    .line 4922
    .line 4923
    .line 4924
    .line 4925
    .line 4926
    .line 4927
    .line 4928
    .line 4929
    .line 4930
    .line 4931
    .line 4932
    .line 4933
    .line 4934
    .line 4935
    .line 4936
    .line 4937
    .line 4938
    .line 4939
    .line 4940
    .line 4941
    .line 4942
    .line 4943
    .line 4944
    .line 4945
    .line 4946
    .line 4947
    .line 4948
    .line 4949
    .line 4950
    .line 4951
    .line 4952
    .line 4953
    .line 4954
    .line 4955
    .line 4956
    .line 4957
    .line 4958
    .line 4959
    .line 4960
    .line 4961
    .line 4962
    .line 4963
    .line 4964
    .line 4965
    .line 4966
    .line 4967
    .line 4968
    .line 4969
    .line 4970
    .line 4971
    .line 4972
    .line 4973
    .line 4974
    .line 4975
    .line 4976
    .line 4977
    .line 4978
    .line 4979
    .line 4980
    .line 4981
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 4982
    .line 4983
    .line 4984
    .line 4985
    .line 4986
    .line 4987
    .line 4988
    .line 4989
    .line 4990
    .line 4991
    .line 4992
    .line 4993
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_a
        :pswitch_d
        :pswitch_9
    .end packed-switch

    .line 4994
    .line 4995
    .line 4996
    .line 4997
    .line 4998
    .line 4999
    .line 5000
    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_8
        :pswitch_d
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xca
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createLongOption(IJ)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->isCommonPlayerOption(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 9
    .line 10
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/16 v0, 0x2c5

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "unknown option key: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", value: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "ConfigItemFactory"

    .line 49
    .line 50
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 56
    .line 57
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 p3, 0x29c

    .line 62
    .line 63
    invoke-direct {p1, p3, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object p1
.end method

.method public createStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/configcenter/ConfigItemFactory;->isCommonPlayerOption(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v0, 0x163

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq p1, v0, :cond_5

    .line 18
    .line 19
    const/16 v0, 0x213

    .line 20
    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/16 v0, 0x296

    .line 24
    .line 25
    if-eq p1, v0, :cond_3

    .line 26
    .line 27
    const/16 v0, 0x3e8

    .line 28
    .line 29
    if-eq p1, v0, :cond_4

    .line 30
    .line 31
    const/16 v0, 0x168

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x169

    .line 36
    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    packed-switch p1, :pswitch_data_1

    .line 43
    .line 44
    .line 45
    packed-switch p1, :pswitch_data_2

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "unknown option key: "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ", value: "

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "ConfigItemFactory"

    .line 75
    .line 76
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 82
    .line 83
    const/16 v0, 0x48a

    .line 84
    .line 85
    invoke-direct {p1, v0, p2, v1, v2}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 90
    .line 91
    const/16 v0, 0x489

    .line 92
    .line 93
    invoke-direct {p1, v0, p2, v1, v2}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 98
    .line 99
    const/16 v0, 0xca

    .line 100
    .line 101
    invoke-direct {p1, v0, p2, v1, v2}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    :pswitch_0
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;

    .line 106
    .line 107
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/configcenter/EngineConfigItem;-><init>(ILjava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    move-object p1, v0

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    new-instance p1, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;

    .line 113
    .line 114
    const/16 v0, 0x486

    .line 115
    .line 116
    invoke-direct {p1, v0, p2, v1, v2}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigItem;-><init>(ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-object p1

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x21a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :pswitch_data_1
    .packed-switch 0x221
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :pswitch_data_2
    .packed-switch 0x582
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
