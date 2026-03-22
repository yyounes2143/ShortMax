.class public Lcom/applovin/impl/sdk/utils/BundleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static getBoolean(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getBoolean(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 6
    :cond_1
    instance-of p2, p0, Ljava/lang/Number;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    .line 8
    :cond_3
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    const-string/jumbo p2, "true"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "1"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    const-string p2, "false"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return p1

    :cond_6
    :goto_0
    return v1

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return p1
.end method

.method public static getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getInt(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 6
    :cond_1
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 7
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;JLandroid/os/Bundle;)J
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p3, p0, Ljava/lang/Number;

    if-eqz p3, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_1
    instance-of p3, p0, Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 7
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public static getLong(Ljava/lang/String;Landroid/os/Bundle;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getLong(Ljava/lang/String;JLandroid/os/Bundle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "AppLovinSdk"

    .line 2
    .line 3
    if-eqz p1, :cond_17

    .line 4
    .line 5
    instance-of v1, p1, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putInt(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putLong(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_3
    instance-of v1, p1, Ljava/lang/Double;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Double;

    .line 54
    .line 55
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putDouble(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_4
    instance-of v1, p1, Ljava/lang/Byte;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    check-cast p1, Ljava/lang/Byte;

    .line 65
    .line 66
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putByte(Ljava/lang/String;Ljava/lang/Byte;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_5
    instance-of v1, p1, Ljava/lang/Character;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    check-cast p1, Ljava/lang/Character;

    .line 76
    .line 77
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putChar(Ljava/lang/String;Ljava/lang/Character;Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Float;

    .line 87
    .line 88
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putFloat(Ljava/lang/String;Ljava/lang/Float;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_7
    instance-of v1, p1, Ljava/lang/Short;

    .line 94
    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    check-cast p1, Ljava/lang/Short;

    .line 98
    .line 99
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putShort(Ljava/lang/String;Ljava/lang/Short;Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_8
    instance-of v1, p1, Ljava/lang/CharSequence;

    .line 105
    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    check-cast p1, Ljava/lang/CharSequence;

    .line 109
    .line 110
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_9
    instance-of v1, p1, [Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v1, :cond_a

    .line 118
    .line 119
    check-cast p1, [Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putStringArray(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_a
    instance-of v1, p1, [Z

    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    check-cast p1, [Z

    .line 131
    .line 132
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putBooleanArray(Ljava/lang/String;[ZLandroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_b
    instance-of v1, p1, [I

    .line 138
    .line 139
    if-eqz v1, :cond_c

    .line 140
    .line 141
    check-cast p1, [I

    .line 142
    .line 143
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putIntArray(Ljava/lang/String;[ILandroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_c
    instance-of v1, p1, [J

    .line 149
    .line 150
    if-eqz v1, :cond_d

    .line 151
    .line 152
    check-cast p1, [J

    .line 153
    .line 154
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putLongArray(Ljava/lang/String;[JLandroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_d
    instance-of v1, p1, [D

    .line 160
    .line 161
    if-eqz v1, :cond_e

    .line 162
    .line 163
    check-cast p1, [D

    .line 164
    .line 165
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putDoubleArray(Ljava/lang/String;[DLandroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_e
    instance-of v1, p1, [B

    .line 171
    .line 172
    if-eqz v1, :cond_f

    .line 173
    .line 174
    check-cast p1, [B

    .line 175
    .line 176
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putByteArray(Ljava/lang/String;[BLandroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_f
    instance-of v1, p1, [C

    .line 182
    .line 183
    if-eqz v1, :cond_10

    .line 184
    .line 185
    check-cast p1, [C

    .line 186
    .line 187
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putCharArray(Ljava/lang/String;[CLandroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_10
    instance-of v1, p1, [F

    .line 193
    .line 194
    if-eqz v1, :cond_11

    .line 195
    .line 196
    check-cast p1, [F

    .line 197
    .line 198
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putFloatArray(Ljava/lang/String;[FLandroid/os/Bundle;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_11
    instance-of v1, p1, [S

    .line 203
    .line 204
    if-eqz v1, :cond_12

    .line 205
    .line 206
    check-cast p1, [S

    .line 207
    .line 208
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putShortArray(Ljava/lang/String;[SLandroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_12
    instance-of v1, p1, [Ljava/lang/CharSequence;

    .line 213
    .line 214
    if-eqz v1, :cond_13

    .line 215
    .line 216
    check-cast p1, [Ljava/lang/CharSequence;

    .line 217
    .line 218
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_13
    instance-of v1, p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    if-eqz v1, :cond_16

    .line 225
    .line 226
    move-object v1, p1

    .line 227
    check-cast v1, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-lez v2, :cond_16

    .line 234
    .line 235
    const/4 p1, 0x0

    .line 236
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    instance-of v0, v0, Ljava/lang/String;

    .line 241
    .line 242
    if-eqz v0, :cond_14

    .line 243
    .line 244
    invoke-static {p0, v1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    instance-of v0, v0, Ljava/lang/Integer;

    .line 253
    .line 254
    if-eqz v0, :cond_15

    .line 255
    .line 256
    invoke-static {p0, v1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    instance-of p1, p1, Ljava/lang/CharSequence;

    .line 265
    .line 266
    if-eqz p1, :cond_18

    .line 267
    .line 268
    invoke-static {p0, v1, p2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string p2, "Skipped insertion of "

    .line 278
    .line 279
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p1, " into Bundle"

    .line 286
    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_17
    const-string p0, "Skipped insertion into Bundle because value is null."

    .line 299
    .line 300
    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_18
    :goto_0
    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putBooleanArray(Ljava/lang/String;[ZLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putByte(Ljava/lang/String;Ljava/lang/Byte;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Byte;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putByteArray(Ljava/lang/String;[BLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putChar(Ljava/lang/String;Ljava/lang/Character;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Character;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putCharArray(Ljava/lang/String;[CLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putDouble(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putDoubleArray(Ljava/lang/String;[DLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putFloat(Ljava/lang/String;Ljava/lang/Float;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putFloatArray(Ljava/lang/String;[FLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putIntArray(Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putLongArray(Ljava/lang/String;[JLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putShort(Ljava/lang/String;Ljava/lang/Short;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Short;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static putShortArray(Ljava/lang/String;[SLandroid/os/Bundle;)V
    .locals 0
    .param p1    # [S
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putStringArray(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static putStringIfValid(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_8

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v4, v3, Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    check-cast v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    instance-of v4, v3, Ljava/util/Collection;

    .line 58
    .line 59
    if-nez v4, :cond_4

    .line 60
    .line 61
    instance-of v4, v3, [Landroid/os/Parcelable;

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    instance-of v4, v3, Ljava/util/Collection;

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    check-cast v3, Ljava/util/Collection;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    check-cast v3, [Landroid/os/Parcelable;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    .line 84
    .line 85
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    instance-of v6, v5, Landroid/os/Bundle;

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    check-cast v5, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :goto_4
    const-string v1, "AppLovinSdk"

    .line 125
    .line 126
    const-string v2, "Failed to convert Bundle to JSONObject"

    .line 127
    .line 128
    invoke-static {v1, v2, p0}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    return-object v0
.end method

.method public static toMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    instance-of v4, v3, Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    check-cast v3, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    instance-of v4, v3, Ljava/util/Collection;

    .line 60
    .line 61
    if-nez v4, :cond_4

    .line 62
    .line 63
    instance-of v5, v3, [Landroid/os/Parcelable;

    .line 64
    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 73
    .line 74
    check-cast v3, Ljava/util/Collection;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    check-cast v3, [Landroid/os/Parcelable;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    instance-of v6, v5, Landroid/os/Bundle;

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    check-cast v5, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    return-object v0
.end method

.method public static toStringMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method
