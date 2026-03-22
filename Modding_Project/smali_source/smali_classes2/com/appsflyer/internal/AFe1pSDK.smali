.class public final enum Lcom/appsflyer/internal/AFe1pSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1pSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum areAllFieldsValid:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component1:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component2:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component3:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component4:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum copy:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum copydefault:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum equals:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getMediationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getMonetizationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum hashCode:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum toString:Lcom/appsflyer/internal/AFe1pSDK;

.field private static final synthetic w:[Lcom/appsflyer/internal/AFe1pSDK;


# instance fields
.field public final unregisterClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "RC_CDN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 12
    .line 13
    new-instance v2, Lcom/appsflyer/internal/AFe1pSDK;

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    const-string v3, "FETCH_ADVERTISING_ID"

    .line 17
    .line 18
    invoke-direct {v2, v3, v4, v4}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/appsflyer/internal/AFe1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

    .line 22
    .line 23
    new-instance v3, Lcom/appsflyer/internal/AFe1pSDK;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "LOAD_CACHE"

    .line 27
    .line 28
    const/4 v11, 0x2

    .line 29
    invoke-direct {v3, v4, v11, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/appsflyer/internal/AFe1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

    .line 33
    .line 34
    new-instance v4, Lcom/appsflyer/internal/AFe1pSDK;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "CACHED_EVENT"

    .line 38
    .line 39
    const/4 v12, 0x3

    .line 40
    invoke-direct {v4, v5, v12, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lcom/appsflyer/internal/AFe1pSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

    .line 44
    .line 45
    new-instance v5, Lcom/appsflyer/internal/AFe1pSDK;

    .line 46
    .line 47
    move-object v4, v5

    .line 48
    const-string v6, "CONVERSION"

    .line 49
    .line 50
    const/4 v15, 0x4

    .line 51
    invoke-direct {v5, v6, v15, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 55
    .line 56
    new-instance v6, Lcom/appsflyer/internal/AFe1pSDK;

    .line 57
    .line 58
    move-object v5, v6

    .line 59
    const-string v7, "PLAY_INTEGRITY_API"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/appsflyer/internal/AFe1pSDK;->component3:Lcom/appsflyer/internal/AFe1pSDK;

    .line 66
    .line 67
    new-instance v7, Lcom/appsflyer/internal/AFe1pSDK;

    .line 68
    .line 69
    move-object v6, v7

    .line 70
    const-string v8, "REGISTER_TRIGGER"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lcom/appsflyer/internal/AFe1pSDK;->component1:Lcom/appsflyer/internal/AFe1pSDK;

    .line 77
    .line 78
    new-instance v8, Lcom/appsflyer/internal/AFe1pSDK;

    .line 79
    .line 80
    move-object v7, v8

    .line 81
    const-string v9, "ONELINK"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lcom/appsflyer/internal/AFe1pSDK;->component4:Lcom/appsflyer/internal/AFe1pSDK;

    .line 88
    .line 89
    new-instance v9, Lcom/appsflyer/internal/AFe1pSDK;

    .line 90
    .line 91
    move-object v8, v9

    .line 92
    const-string v10, "DLSDK"

    .line 93
    .line 94
    const/16 v13, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v10, v13, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/appsflyer/internal/AFe1pSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 100
    .line 101
    new-instance v10, Lcom/appsflyer/internal/AFe1pSDK;

    .line 102
    .line 103
    move-object v9, v10

    .line 104
    const-string v13, "RESOLVE_ESP"

    .line 105
    .line 106
    const/16 v14, 0x9

    .line 107
    .line 108
    invoke-direct {v10, v13, v14, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lcom/appsflyer/internal/AFe1pSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1pSDK;

    .line 112
    .line 113
    new-instance v13, Lcom/appsflyer/internal/AFe1pSDK;

    .line 114
    .line 115
    move-object v10, v13

    .line 116
    const-string v14, "ATTR"

    .line 117
    .line 118
    const/16 v15, 0xa

    .line 119
    .line 120
    invoke-direct {v13, v14, v15, v11}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v13, Lcom/appsflyer/internal/AFe1pSDK;->hashCode:Lcom/appsflyer/internal/AFe1pSDK;

    .line 124
    .line 125
    new-instance v13, Lcom/appsflyer/internal/AFe1pSDK;

    .line 126
    .line 127
    move-object v11, v13

    .line 128
    const-string v14, "GCDSDK"

    .line 129
    .line 130
    const/16 v15, 0xb

    .line 131
    .line 132
    invoke-direct {v13, v14, v15, v12}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v13, Lcom/appsflyer/internal/AFe1pSDK;->copydefault:Lcom/appsflyer/internal/AFe1pSDK;

    .line 136
    .line 137
    new-instance v13, Lcom/appsflyer/internal/AFe1pSDK;

    .line 138
    .line 139
    move-object v12, v13

    .line 140
    const-string v14, "REGISTER"

    .line 141
    .line 142
    const/16 v15, 0xc

    .line 143
    .line 144
    move-object/from16 v21, v0

    .line 145
    .line 146
    const/4 v0, 0x4

    .line 147
    invoke-direct {v13, v14, v15, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    sput-object v13, Lcom/appsflyer/internal/AFe1pSDK;->toString:Lcom/appsflyer/internal/AFe1pSDK;

    .line 151
    .line 152
    new-instance v14, Lcom/appsflyer/internal/AFe1pSDK;

    .line 153
    .line 154
    move-object v13, v14

    .line 155
    const-string v15, "LAUNCH"

    .line 156
    .line 157
    move-object/from16 v22, v1

    .line 158
    .line 159
    const/16 v1, 0xd

    .line 160
    .line 161
    invoke-direct {v14, v15, v1, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 162
    .line 163
    .line 164
    sput-object v14, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    .line 165
    .line 166
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 167
    .line 168
    move-object v14, v1

    .line 169
    const-string v15, "INAPP"

    .line 170
    .line 171
    move-object/from16 v23, v2

    .line 172
    .line 173
    const/16 v2, 0xe

    .line 174
    .line 175
    invoke-direct {v1, v15, v2, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->equals:Lcom/appsflyer/internal/AFe1pSDK;

    .line 179
    .line 180
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 181
    .line 182
    move-object v15, v1

    .line 183
    const-string v2, "MANUAL_PURCHASE_VALIDATION"

    .line 184
    .line 185
    move-object/from16 v24, v3

    .line 186
    .line 187
    const/16 v3, 0xf

    .line 188
    .line 189
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 190
    .line 191
    .line 192
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1pSDK;

    .line 193
    .line 194
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 195
    .line 196
    move-object/from16 v16, v1

    .line 197
    .line 198
    const-string v2, "PURCHASE_VALIDATE"

    .line 199
    .line 200
    const/16 v3, 0x10

    .line 201
    .line 202
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 203
    .line 204
    .line 205
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1pSDK;

    .line 206
    .line 207
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 208
    .line 209
    move-object/from16 v17, v1

    .line 210
    .line 211
    const-string v2, "SDK_SERVICES"

    .line 212
    .line 213
    const/16 v3, 0x11

    .line 214
    .line 215
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 216
    .line 217
    .line 218
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1pSDK;

    .line 219
    .line 220
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 221
    .line 222
    move-object/from16 v18, v1

    .line 223
    .line 224
    const-string v2, "IMPRESSIONS"

    .line 225
    .line 226
    const/16 v3, 0x12

    .line 227
    .line 228
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 229
    .line 230
    .line 231
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 232
    .line 233
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 234
    .line 235
    move-object/from16 v19, v1

    .line 236
    .line 237
    const-string v2, "ARS_VALIDATE"

    .line 238
    .line 239
    const/16 v3, 0x13

    .line 240
    .line 241
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 242
    .line 243
    .line 244
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->registerClient:Lcom/appsflyer/internal/AFe1pSDK;

    .line 245
    .line 246
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 247
    .line 248
    move-object/from16 v20, v1

    .line 249
    .line 250
    const-string v2, "ADREVENUE"

    .line 251
    .line 252
    const/16 v3, 0x14

    .line 253
    .line 254
    invoke-direct {v1, v2, v3, v0}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 255
    .line 256
    .line 257
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->d:Lcom/appsflyer/internal/AFe1pSDK;

    .line 258
    .line 259
    move-object/from16 v0, v21

    .line 260
    .line 261
    move-object/from16 v1, v22

    .line 262
    .line 263
    move-object/from16 v2, v23

    .line 264
    .line 265
    move-object/from16 v3, v24

    .line 266
    .line 267
    filled-new-array/range {v0 .. v20}, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Lcom/appsflyer/internal/AFe1pSDK;->w:[Lcom/appsflyer/internal/AFe1pSDK;

    .line 272
    .line 273
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/appsflyer/internal/AFe1pSDK;->unregisterClient:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1pSDK;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1pSDK;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->w:[Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFe1pSDK;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 8
    .line 9
    return-object v0
.end method
