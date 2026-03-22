.class public final Lcom/google/android/gms/ads/internal/client/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


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


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-wide v8, v2

    .line 12
    move-wide/from16 v33, v8

    .line 13
    .line 14
    move-wide/from16 v35, v33

    .line 15
    .line 16
    move v7, v4

    .line 17
    move v11, v7

    .line 18
    move v13, v11

    .line 19
    move v14, v13

    .line 20
    move v15, v14

    .line 21
    move/from16 v25, v15

    .line 22
    .line 23
    move/from16 v27, v25

    .line 24
    .line 25
    move/from16 v30, v27

    .line 26
    .line 27
    move/from16 v32, v30

    .line 28
    .line 29
    move-object v10, v5

    .line 30
    move-object v12, v10

    .line 31
    move-object/from16 v16, v12

    .line 32
    .line 33
    move-object/from16 v17, v16

    .line 34
    .line 35
    move-object/from16 v18, v17

    .line 36
    .line 37
    move-object/from16 v19, v18

    .line 38
    .line 39
    move-object/from16 v20, v19

    .line 40
    .line 41
    move-object/from16 v21, v20

    .line 42
    .line 43
    move-object/from16 v22, v21

    .line 44
    .line 45
    move-object/from16 v23, v22

    .line 46
    .line 47
    move-object/from16 v24, v23

    .line 48
    .line 49
    move-object/from16 v26, v24

    .line 50
    .line 51
    move-object/from16 v28, v26

    .line 52
    .line 53
    move-object/from16 v29, v28

    .line 54
    .line 55
    move-object/from16 v31, v29

    .line 56
    .line 57
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v2, v1, :cond_0

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    packed-switch v3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    move-wide/from16 v35, v2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    move-wide/from16 v33, v2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    move/from16 v32, v2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object/from16 v31, v2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move/from16 v30, v2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object/from16 v29, v2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    move-object/from16 v28, v2

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    move/from16 v27, v2

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_8
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    .line 136
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzc;

    .line 141
    .line 142
    move-object/from16 v26, v2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move/from16 v25, v2

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    move-object/from16 v24, v2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object/from16 v23, v2

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object/from16 v22, v2

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move-object/from16 v21, v2

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :pswitch_e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    move-object/from16 v20, v2

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object/from16 v19, v2

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :pswitch_10
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Landroid/location/Location;

    .line 203
    .line 204
    move-object/from16 v18, v2

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :pswitch_11
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzfz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    .line 210
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzfz;

    .line 215
    .line 216
    move-object/from16 v17, v2

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    move-object/from16 v16, v2

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_13
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    move v15, v2

    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_14
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    move v14, v2

    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_15
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    move v13, v2

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_16
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object v12, v2

    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_17
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    move v11, v2

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :pswitch_18
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object v10, v2

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :pswitch_19
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    move-wide v8, v2

    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_1a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    move v7, v2

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 288
    .line 289
    move-object v6, v0

    .line 290
    invoke-direct/range {v6 .. v36}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfz;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJJ)V

    .line 291
    .line 292
    .line 293
    return-object v0

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/ads/internal/client/zzm;

    .line 2
    .line 3
    return-object p1
.end method
