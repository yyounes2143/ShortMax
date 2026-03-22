.class public abstract Lcom/inmobi/media/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/HashMap;
    .locals 13

    const/4 v0, 0x2

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    const-string v4, "signals"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 5
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->getCellOperatorFlag()I

    move-result v3

    and-int/lit8 v4, v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    and-int/2addr v3, v7

    if-ne v3, v7, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v6

    .line 7
    :goto_1
    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/telephony/TelephonyManager;

    const/4 v8, -0x1

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/media/h2;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 9
    aget v9, v0, v6

    .line 10
    aget v0, v0, v7

    .line 11
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 12
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "ENGLISH"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v10, v5

    goto :goto_2

    :cond_4
    move-object v10, v5

    move v0, v8

    move v9, v0

    :goto_2
    if-nez v3, :cond_5

    .line 13
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/media/h2;->a(Ljava/lang/String;)[I

    move-result-object v3

    .line 14
    aget v4, v3, v6

    .line 15
    aget v3, v3, v7

    goto :goto_3

    :cond_5
    move v3, v8

    move v4, v3

    :goto_3
    const/16 v6, 0x5f

    if-ne v4, v8, :cond_6

    if-ne v3, v8, :cond_6

    move-object v3, v5

    goto :goto_4

    .line 16
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_7

    .line 17
    const-string v4, "s-ho"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-ne v9, v8, :cond_8

    if-ne v0, v8, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_9

    .line 19
    const-string v0, "s-co"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v10, :cond_a

    .line 20
    const-string v0, "s-iso"

    invoke-virtual {v1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_a
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/L3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "s-cn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 23
    aput v2, v0, v1

    const/4 v3, 0x1

    .line 24
    aput v2, v0, v3

    if-eqz p0, :cond_1

    .line 25
    const-string v2, ""

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 26
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 28
    aput v4, v0, v1

    .line 29
    aput p0, v0, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Ljava/util/HashMap;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/inmobi/media/Uc;->h()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v3, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    const-string v3, "signals"

    .line 14
    .line 15
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 20
    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isConnectedCellTowerEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_b

    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/inmobi/media/h2;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_b

    .line 41
    .line 42
    invoke-static {}, Lcom/inmobi/media/h2;->e()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_2
    const-string v3, "phone"

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v3, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 65
    .line 66
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Lcom/inmobi/media/h2;->a(Ljava/lang/String;)[I

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    aget v5, v3, v4

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    aget v5, v3, v0

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/16 v8, 0x1e

    .line 97
    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    move-object v11, v2

    .line 105
    move v10, v4

    .line 106
    :goto_0
    if-ge v10, v9, :cond_4

    .line 107
    .line 108
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    check-cast v11, Landroid/telephony/CellInfo;

    .line 113
    .line 114
    invoke-virtual {v11}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    add-int/2addr v10, v0

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    :goto_1
    if-eqz v11, :cond_6

    .line 124
    .line 125
    new-instance v2, Lcom/inmobi/media/g2;

    .line 126
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    if-lt v0, v8, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    :goto_2
    invoke-direct {v2, v11, v6, v7, v0}, Lcom/inmobi/media/g2;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    aget v3, v3, v4

    .line 152
    .line 153
    const/4 v4, -0x1

    .line 154
    if-ne v3, v4, :cond_7

    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_7
    new-instance v2, Lcom/inmobi/media/g2;

    .line 159
    .line 160
    invoke-direct {v2}, Lcom/inmobi/media/g2;-><init>()V

    .line 161
    .line 162
    .line 163
    instance-of v3, v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 164
    .line 165
    const v4, 0x7fffffff

    .line 166
    .line 167
    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    iput v4, v2, Lcom/inmobi/media/g2;->b:I

    .line 171
    .line 172
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    .line 174
    if-lt v3, v8, :cond_8

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_3

    .line 181
    :cond_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    :goto_3
    iput v1, v2, Lcom/inmobi/media/g2;->c:I

    .line 186
    .line 187
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const-string v4, "mcc"

    .line 202
    .line 203
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const/16 v5, 0x23

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, v2, Lcom/inmobi/media/g2;->a:Ljava/lang/String;

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_9
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 242
    .line 243
    iput v4, v2, Lcom/inmobi/media/g2;->b:I

    .line 244
    .line 245
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    .line 247
    if-lt v3, v8, :cond_a

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    goto :goto_4

    .line 254
    :cond_a
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    :goto_4
    iput v1, v2, Lcom/inmobi/media/g2;->c:I

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    const v11, 0x7fffffff

    .line 273
    .line 274
    .line 275
    invoke-static/range {v6 .. v11}, Lcom/inmobi/media/g2;->a(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, v2, Lcom/inmobi/media/g2;->a:Ljava/lang/String;

    .line 280
    .line 281
    :cond_b
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    .line 285
    .line 286
    if-eqz v2, :cond_c

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/inmobi/media/g2;->a()Lorg/json/JSONObject;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const-string v2, "toString(...)"

    .line 297
    .line 298
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v2, "c-sc"

    .line 302
    .line 303
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    :cond_c
    return-object v0
.end method

.method public static c()Ljava/util/HashMap;
    .locals 10

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/h2;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-static {}, Lcom/inmobi/media/h2;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    sget-object v0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/inmobi/media/Uc;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    const-string v2, "signals"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v2, v0, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isVisibleCellTowerEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    const-string v2, "phone"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 78
    .line 79
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Lcom/inmobi/media/h2;->a(Ljava/lang/String;)[I

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/4 v4, 0x0

    .line 93
    aget v4, v3, v4

    .line 94
    .line 95
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aget v3, v3, v1

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Landroid/telephony/CellInfo;

    .line 126
    .line 127
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_2

    .line 132
    .line 133
    new-instance v7, Lcom/inmobi/media/g2;

    .line 134
    .line 135
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    const/16 v9, 0x1e

    .line 138
    .line 139
    if-lt v8, v9, :cond_3

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    :goto_1
    invoke-direct {v7, v6, v4, v3, v8}, Lcom/inmobi/media/g2;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    move-object v0, v2

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_6

    .line 174
    .line 175
    new-instance v3, Lorg/json/JSONArray;

    .line 176
    .line 177
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    sub-int/2addr v4, v1

    .line 185
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/inmobi/media/g2;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/inmobi/media/g2;->a()Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "toString(...)"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v1, "v-sc"

    .line 208
    .line 209
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_6
    return-object v2
.end method

.method public static d()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v4, 0x1d

    .line 32
    .line 33
    const-string v5, "TAG"

    .line 34
    .line 35
    const-string v6, "h2"

    .line 36
    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return v2

    .line 45
    :cond_2
    const/16 v4, 0x1e

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    if-lt v3, v4, :cond_6

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    :cond_3
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    if-eqz v2, :cond_5

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    move v1, v7

    .line 62
    :cond_5
    return v1

    .line 63
    :cond_6
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 68
    .line 69
    invoke-static {v0, v3}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    if-nez v2, :cond_7

    .line 76
    .line 77
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    if-nez v0, :cond_8

    .line 81
    .line 82
    if-eqz v2, :cond_9

    .line 83
    .line 84
    :cond_8
    move v1, v7

    .line 85
    :cond_9
    return v1
.end method

.method public static e()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v3, "location"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    instance-of v3, v0, Landroid/location/LocationManager;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Landroid/location/LocationManager;

    .line 29
    .line 30
    :cond_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v1}, Lub/x2;->a(Landroid/location/LocationManager;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    :cond_3
    :goto_1
    return v2
.end method
