.class public final synthetic Lbm/e0$a;
.super Ljava/lang/Object;
.source "AdaptiveRenderingParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbm/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

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
    const/4 v1, 0x1

    .line 9
    :try_start_0
    sget-object v2, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_PORTRAIT:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    const/4 v2, 0x2

    .line 18
    :try_start_1
    sget-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_LANDSCAPE:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    :catch_1
    const/4 v3, 0x3

    .line 27
    :try_start_2
    sget-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_SYSTEM:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    .line 35
    :catch_2
    const/4 v4, 0x4

    .line 36
    :try_start_3
    sget-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->ORIENTATION_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 43
    .line 44
    :catch_3
    const/4 v5, 0x5

    .line 45
    :try_start_4
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Orientation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 52
    .line 53
    :catch_4
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$0:[I

    .line 54
    .line 55
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    array-length v0, v0

    .line 60
    new-array v0, v0, [I

    .line 61
    .line 62
    :try_start_5
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_FULL_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    aput v1, v0, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 69
    .line 70
    :catch_5
    :try_start_6
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_PARTIAL_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    aput v2, v0, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 77
    .line 78
    :catch_6
    :try_start_7
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_STREAM_LOAD:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    aput v3, v0, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 85
    .line 86
    :catch_7
    :try_start_8
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->CACHE_TYPE_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    aput v4, v0, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 93
    .line 94
    :catch_8
    :try_start_9
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$CacheType;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    aput v5, v0, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 101
    .line 102
    :catch_9
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$1:[I

    .line 103
    .line 104
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    array-length v0, v0

    .line 109
    new-array v0, v0, [I

    .line 110
    .line 111
    :try_start_a
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_MRAID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    aput v1, v0, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 118
    .line 119
    :catch_a
    :try_start_b
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_VIDEO:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    aput v2, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 126
    .line 127
    :catch_b
    :try_start_c
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_IMAGE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    aput v3, v0, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 134
    .line 135
    :catch_c
    :try_start_d
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_LABEL:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    aput v4, v0, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 142
    .line 143
    :catch_d
    :try_start_e
    sget-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_COUNTDOWN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    aput v5, v0, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 150
    .line 151
    :catch_e
    const/4 v6, 0x6

    .line 152
    :try_start_f
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;->VIEW_COMPONENT_TYPE_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    aput v6, v0, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 159
    .line 160
    :catch_f
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$2:[I

    .line 161
    .line 162
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    array-length v0, v0

    .line 167
    new-array v0, v0, [I

    .line 168
    .line 169
    :try_start_10
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_LEFT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    aput v1, v0, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 176
    .line 177
    :catch_10
    :try_start_11
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_RIGHT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 178
    .line 179
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    aput v2, v0, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 184
    .line 185
    :catch_11
    :try_start_12
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_TOP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    aput v3, v0, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 192
    .line 193
    :catch_12
    :try_start_13
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;->ANCHOR_BOTTOM:Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    aput v4, v0, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 200
    .line 201
    :catch_13
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$3:[I

    .line 202
    .line 203
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    array-length v0, v0

    .line 208
    new-array v0, v0, [I

    .line 209
    .line 210
    :try_start_14
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_NONE:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    aput v1, v0, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 217
    .line 218
    :catch_14
    :try_start_15
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_TO_FILL:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 219
    .line 220
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    aput v2, v0, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 225
    .line 226
    :catch_15
    :try_start_16
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_ASPECT_FILL:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 227
    .line 228
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    aput v3, v0, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 233
    .line 234
    :catch_16
    :try_start_17
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;->SCALE_TYPE_ASPECT_FIT:Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    aput v4, v0, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 241
    .line 242
    :catch_17
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$4:[I

    .line 243
    .line 244
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    array-length v0, v0

    .line 249
    new-array v0, v0, [I

    .line 250
    .line 251
    :try_start_18
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_IMPRESSION:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    aput v1, v0, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 258
    .line 259
    :catch_18
    :try_start_19
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    aput v2, v0, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 266
    .line 267
    :catch_19
    :try_start_1a
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    aput v3, v0, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 274
    .line 275
    :catch_1a
    :try_start_1b
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_NAVIGATE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    aput v4, v0, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 282
    .line 283
    :catch_1b
    :try_start_1c
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 284
    .line 285
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    aput v5, v0, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 290
    .line 291
    :catch_1c
    :try_start_1d
    sget-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 292
    .line 293
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    aput v6, v0, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 298
    .line 299
    :catch_1d
    const/4 v7, 0x7

    .line 300
    :try_start_1e
    sget-object v8, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_PAUSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 301
    .line 302
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    aput v7, v0, v8
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 307
    .line 308
    :catch_1e
    const/16 v8, 0x8

    .line 309
    .line 310
    :try_start_1f
    sget-object v9, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_RESUME:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 311
    .line 312
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    aput v8, v0, v9
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 317
    .line 318
    :catch_1f
    const/16 v9, 0x9

    .line 319
    .line 320
    :try_start_20
    sget-object v10, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 321
    .line 322
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    aput v9, v0, v10
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    .line 327
    .line 328
    :catch_20
    const/16 v10, 0xa

    .line 329
    .line 330
    :try_start_21
    sget-object v11, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 331
    .line 332
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    aput v10, v0, v11
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 337
    .line 338
    :catch_21
    const/16 v11, 0xb

    .line 339
    .line 340
    :try_start_22
    sget-object v12, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 341
    .line 342
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    aput v11, v0, v12
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 347
    .line 348
    :catch_22
    const/16 v12, 0xc

    .line 349
    .line 350
    :try_start_23
    sget-object v13, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_FIRST_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 351
    .line 352
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    aput v12, v0, v13
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 357
    .line 358
    :catch_23
    const/16 v13, 0xd

    .line 359
    .line 360
    :try_start_24
    sget-object v14, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_MIDPOINT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 361
    .line 362
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    aput v13, v0, v14
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    .line 367
    .line 368
    :catch_24
    const/16 v14, 0xe

    .line 369
    .line 370
    :try_start_25
    sget-object v15, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_THIRD_QUARTILE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 371
    .line 372
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 373
    .line 374
    .line 375
    move-result v15

    .line 376
    aput v14, v0, v15
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    .line 377
    .line 378
    :catch_25
    const/16 v15, 0xf

    .line 379
    .line 380
    :try_start_26
    sget-object v16, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_COMPLETE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 381
    .line 382
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 383
    .line 384
    .line 385
    move-result v16

    .line 386
    aput v15, v0, v16
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    .line 387
    .line 388
    :catch_26
    const/16 v16, 0x10

    .line 389
    .line 390
    :try_start_27
    sget-object v17, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_USE_CUSTOM_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 391
    .line 392
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    .line 393
    .line 394
    .line 395
    move-result v17

    .line 396
    aput v16, v0, v17
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 397
    .line 398
    :catch_27
    const/16 v17, 0x11

    .line 399
    .line 400
    :try_start_28
    sget-object v18, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;->EVENT_NAME_ON_SCHEDULED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 401
    .line 402
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 403
    .line 404
    .line 405
    move-result v18

    .line 406
    aput v17, v0, v18
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    .line 407
    .line 408
    :catch_28
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$5:[I

    .line 409
    .line 410
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    array-length v0, v0

    .line 415
    new-array v0, v0, [I

    .line 416
    .line 417
    :try_start_29
    sget-object v18, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 418
    .line 419
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 420
    .line 421
    .line 422
    move-result v18

    .line 423
    aput v1, v0, v18
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 424
    .line 425
    :catch_29
    :try_start_2a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 432
    .line 433
    :catch_2a
    :try_start_2b
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    aput v3, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 440
    .line 441
    :catch_2b
    :try_start_2c
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    aput v4, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 448
    .line 449
    :catch_2c
    :try_start_2d
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    aput v5, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 456
    .line 457
    :catch_2d
    :try_start_2e
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    aput v6, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    .line 464
    .line 465
    :catch_2e
    :try_start_2f
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    aput v7, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 472
    .line 473
    :catch_2f
    :try_start_30
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    aput v8, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    .line 480
    .line 481
    :catch_30
    :try_start_31
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    aput v9, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 488
    .line 489
    :catch_31
    :try_start_32
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    aput v10, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 496
    .line 497
    :catch_32
    :try_start_33
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    aput v11, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 504
    .line 505
    :catch_33
    :try_start_34
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    aput v12, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    .line 512
    .line 513
    :catch_34
    :try_start_35
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    aput v13, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    .line 520
    .line 521
    :catch_35
    :try_start_36
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    aput v14, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    .line 528
    .line 529
    :catch_36
    :try_start_37
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    aput v15, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    .line 536
    .line 537
    :catch_37
    :try_start_38
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    aput v16, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    .line 544
    .line 545
    :catch_38
    :try_start_39
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    aput v17, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    .line 552
    .line 553
    :catch_39
    :try_start_3a
    sget-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    const/16 v2, 0x12

    .line 560
    .line 561
    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    .line 562
    .line 563
    :catch_3a
    sput-object v0, Lbm/e0$a;->$EnumSwitchMapping$6:[I

    .line 564
    .line 565
    return-void
.end method
