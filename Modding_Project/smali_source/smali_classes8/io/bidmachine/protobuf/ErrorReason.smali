.class public final enum Lio/bidmachine/protobuf/ErrorReason;
.super Ljava/lang/Enum;
.source "ErrorReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ErrorReason;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field public static final enum ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_BAD_CONTENT_VALUE:I = 0x65

.field public static final enum ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HANDLED_EXCEPTION_VALUE:I = 0x68

.field public static final enum ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HB_NETWORK_VALUE:I = 0xc8

.field public static final enum ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_BAD_REQUEST_VALUE:I = 0x6e

.field public static final enum ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_SERVER_ERROR_VALUE:I = 0x6d

.field public static final enum ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INTERNAL_VALUE:I = 0x6c

.field public static final enum ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

.field public static final enum ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INVALID_JS_XHR_VALUE:I = 0x70

.field public static final ERROR_REASON_INVALID_VALUE:I = 0x0

.field public static final enum ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONNECTION_VALUE:I = 0x64

.field public static final enum ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONTENT_VALUE:I = 0x67

.field public static final enum ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_PLACEHOLDER_TIMEOUT_VALUE:I = 0xc9

.field public static final enum ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_TIMEOUT_VALUE:I = 0x66

.field public static final enum ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_CLOSED_VALUE:I = 0x69

.field public static final enum ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_DESTROYED_VALUE:I = 0x6a

.field public static final enum ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_EXPIRED_VALUE:I = 0x6b

.field public static final enum ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_USED_ALREADY_VALUE:I = 0x6f

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

.field private static final VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v1, Lio/bidmachine/protobuf/ErrorReason;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "ERROR_REASON_INVALID"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    .line 11
    .line 12
    new-instance v2, Lio/bidmachine/protobuf/ErrorReason;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0x64

    .line 17
    .line 18
    const-string v5, "ERROR_REASON_NO_CONNECTION"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 24
    .line 25
    new-instance v3, Lio/bidmachine/protobuf/ErrorReason;

    .line 26
    .line 27
    move-object v2, v3

    .line 28
    const/4 v4, 0x2

    .line 29
    const/16 v5, 0x65

    .line 30
    .line 31
    const-string v6, "ERROR_REASON_BAD_CONTENT"

    .line 32
    .line 33
    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    sput-object v3, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 37
    .line 38
    new-instance v4, Lio/bidmachine/protobuf/ErrorReason;

    .line 39
    .line 40
    move-object v3, v4

    .line 41
    const/4 v5, 0x3

    .line 42
    const/16 v6, 0x66

    .line 43
    .line 44
    const-string v7, "ERROR_REASON_TIMEOUT"

    .line 45
    .line 46
    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 50
    .line 51
    new-instance v5, Lio/bidmachine/protobuf/ErrorReason;

    .line 52
    .line 53
    move-object v4, v5

    .line 54
    const/4 v6, 0x4

    .line 55
    const/16 v7, 0x67

    .line 56
    .line 57
    const-string v8, "ERROR_REASON_NO_CONTENT"

    .line 58
    .line 59
    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v5, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 63
    .line 64
    new-instance v6, Lio/bidmachine/protobuf/ErrorReason;

    .line 65
    .line 66
    move-object v5, v6

    .line 67
    const/4 v7, 0x5

    .line 68
    const/16 v8, 0x68

    .line 69
    .line 70
    const-string v9, "ERROR_REASON_HANDLED_EXCEPTION"

    .line 71
    .line 72
    invoke-direct {v6, v9, v7, v8}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    sput-object v6, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 76
    .line 77
    new-instance v7, Lio/bidmachine/protobuf/ErrorReason;

    .line 78
    .line 79
    move-object v6, v7

    .line 80
    const/4 v8, 0x6

    .line 81
    const/16 v9, 0x69

    .line 82
    .line 83
    const-string v10, "ERROR_REASON_WAS_CLOSED"

    .line 84
    .line 85
    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    .line 89
    .line 90
    new-instance v8, Lio/bidmachine/protobuf/ErrorReason;

    .line 91
    .line 92
    move-object v7, v8

    .line 93
    const/4 v9, 0x7

    .line 94
    const/16 v10, 0x6a

    .line 95
    .line 96
    const-string v11, "ERROR_REASON_WAS_DESTROYED"

    .line 97
    .line 98
    invoke-direct {v8, v11, v9, v10}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v8, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    .line 102
    .line 103
    new-instance v9, Lio/bidmachine/protobuf/ErrorReason;

    .line 104
    .line 105
    move-object v8, v9

    .line 106
    const/16 v10, 0x8

    .line 107
    .line 108
    const/16 v11, 0x6b

    .line 109
    .line 110
    const-string v12, "ERROR_REASON_WAS_EXPIRED"

    .line 111
    .line 112
    invoke-direct {v9, v12, v10, v11}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v9, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    .line 116
    .line 117
    new-instance v10, Lio/bidmachine/protobuf/ErrorReason;

    .line 118
    .line 119
    move-object v9, v10

    .line 120
    const/16 v11, 0x9

    .line 121
    .line 122
    const/16 v12, 0x6f

    .line 123
    .line 124
    const-string v13, "ERROR_REASON_WAS_USED_ALREADY"

    .line 125
    .line 126
    invoke-direct {v10, v13, v11, v12}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    sput-object v10, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

    .line 130
    .line 131
    new-instance v11, Lio/bidmachine/protobuf/ErrorReason;

    .line 132
    .line 133
    move-object v10, v11

    .line 134
    const/16 v12, 0xa

    .line 135
    .line 136
    const/16 v13, 0x6c

    .line 137
    .line 138
    const-string v14, "ERROR_REASON_INTERNAL"

    .line 139
    .line 140
    invoke-direct {v11, v14, v12, v13}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v11, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    .line 144
    .line 145
    new-instance v12, Lio/bidmachine/protobuf/ErrorReason;

    .line 146
    .line 147
    move-object v11, v12

    .line 148
    const/16 v13, 0xb

    .line 149
    .line 150
    const/16 v14, 0x6d

    .line 151
    .line 152
    const-string v15, "ERROR_REASON_HTTP_SERVER_ERROR"

    .line 153
    .line 154
    invoke-direct {v12, v15, v13, v14}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    sput-object v12, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    .line 158
    .line 159
    new-instance v13, Lio/bidmachine/protobuf/ErrorReason;

    .line 160
    .line 161
    move-object v12, v13

    .line 162
    const/16 v14, 0xc

    .line 163
    .line 164
    const/16 v15, 0x6e

    .line 165
    .line 166
    move-object/from16 v17, v0

    .line 167
    .line 168
    const-string v0, "ERROR_REASON_HTTP_BAD_REQUEST"

    .line 169
    .line 170
    invoke-direct {v13, v0, v14, v15}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    sput-object v13, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    .line 174
    .line 175
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    .line 176
    .line 177
    move-object v13, v0

    .line 178
    const/16 v14, 0xd

    .line 179
    .line 180
    const/16 v15, 0x70

    .line 181
    .line 182
    move-object/from16 v18, v1

    .line 183
    .line 184
    const-string v1, "ERROR_REASON_INVALID_JS_XHR"

    .line 185
    .line 186
    invoke-direct {v0, v1, v14, v15}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

    .line 190
    .line 191
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    .line 192
    .line 193
    move-object v14, v0

    .line 194
    const/16 v1, 0xe

    .line 195
    .line 196
    const/16 v15, 0xc8

    .line 197
    .line 198
    move-object/from16 v19, v2

    .line 199
    .line 200
    const-string v2, "ERROR_REASON_HB_NETWORK"

    .line 201
    .line 202
    invoke-direct {v0, v2, v1, v15}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    .line 206
    .line 207
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    .line 208
    .line 209
    move-object v15, v0

    .line 210
    const/16 v1, 0xf

    .line 211
    .line 212
    const/16 v2, 0xc9

    .line 213
    .line 214
    move-object/from16 v20, v3

    .line 215
    .line 216
    const-string v3, "ERROR_REASON_PLACEHOLDER_TIMEOUT"

    .line 217
    .line 218
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 222
    .line 223
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    .line 224
    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    const/16 v1, 0x10

    .line 228
    .line 229
    const/4 v2, -0x1

    .line 230
    const-string v3, "UNRECOGNIZED"

    .line 231
    .line 232
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    .line 236
    .line 237
    move-object/from16 v0, v17

    .line 238
    .line 239
    move-object/from16 v1, v18

    .line 240
    .line 241
    move-object/from16 v2, v19

    .line 242
    .line 243
    move-object/from16 v3, v20

    .line 244
    .line 245
    filled-new-array/range {v0 .. v16}, [Lio/bidmachine/protobuf/ErrorReason;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    .line 250
    .line 251
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason$1;

    .line 252
    .line 253
    invoke-direct {v0}, Lio/bidmachine/protobuf/ErrorReason$1;-><init>()V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 257
    .line 258
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->values()[Lio/bidmachine/protobuf/ErrorReason;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    .line 263
    .line 264
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
    iput p3, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/16 v0, 0xc8

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0xc9

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_6
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_7
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_8
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_9
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_a
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_b
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_c
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    .line 62
    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x64
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

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ErrorReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/ErrorReason;->forNumber(I)Lio/bidmachine/protobuf/ErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/ErrorReason;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ErrorReason;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ErrorReason;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ErrorReason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/ErrorReason;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
