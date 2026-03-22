.class public final enum Lcom/explorestack/protobuf/openrtb/NoBidReason;
.super Ljava/lang/Enum;
.source "NoBidReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/NoBidReason;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final enum NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE_VALUE:I = 0xd

.field public static final enum NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION_VALUE:I = 0xe

.field public static final enum NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE_VALUE:I = 0xb

.field public static final enum NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION_VALUE:I = 0xc

.field public static final enum NO_BID_REASON_BLOCKED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_BLOCKED_VALUE:I = 0x7

.field public static final enum NO_BID_REASON_DAILY_DOMAIN_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_DAILY_DOMAIN_CAP_MET_VALUE:I = 0xa

.field public static final enum NO_BID_REASON_DAILY_USER_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_DAILY_USER_CAP_MET_VALUE:I = 0x9

.field public static final enum NO_BID_REASON_INSUFFICIENT_AUCTION_TIME:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_INSUFFICIENT_AUCTION_TIME_VALUE:I = 0xf

.field public static final enum NO_BID_REASON_INVALID:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final enum NO_BID_REASON_INVALID_REQUEST:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_INVALID_REQUEST_VALUE:I = 0x2

.field public static final NO_BID_REASON_INVALID_VALUE:I = 0x0

.field public static final enum NO_BID_REASON_KNOWN_WEB_CRAWLER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_KNOWN_WEB_CRAWLER_VALUE:I = 0x3

.field public static final enum NO_BID_REASON_NON_HUMAN_TRAFFIC:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_NON_HUMAN_TRAFFIC_VALUE:I = 0x4

.field public static final enum NO_BID_REASON_PROXY_IP:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_PROXY_IP_VALUE:I = 0x5

.field public static final enum NO_BID_REASON_TECHNICAL_ERROR:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_TECHNICAL_ERROR_VALUE:I = 0x1

.field public static final enum NO_BID_REASON_UNMATCHED_USER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_UNMATCHED_USER_VALUE:I = 0x8

.field public static final enum NO_BID_REASON_UNSUPPORTED_DEVICE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field public static final NO_BID_REASON_UNSUPPORTED_DEVICE_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field private static final VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/openrtb/NoBidReason;",
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
    new-instance v1, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "NO_BID_REASON_INVALID"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 11
    .line 12
    new-instance v2, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "NO_BID_REASON_TECHNICAL_ERROR"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_TECHNICAL_ERROR:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 22
    .line 23
    new-instance v3, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "NO_BID_REASON_INVALID_REQUEST"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID_REQUEST:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 33
    .line 34
    new-instance v4, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "NO_BID_REASON_KNOWN_WEB_CRAWLER"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6, v6}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_KNOWN_WEB_CRAWLER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 44
    .line 45
    new-instance v5, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 46
    .line 47
    move-object v4, v5

    .line 48
    const-string v6, "NO_BID_REASON_NON_HUMAN_TRAFFIC"

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7, v7}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_NON_HUMAN_TRAFFIC:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 55
    .line 56
    new-instance v6, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 57
    .line 58
    move-object v5, v6

    .line 59
    const-string v7, "NO_BID_REASON_PROXY_IP"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8, v8}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_PROXY_IP:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 66
    .line 67
    new-instance v7, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 68
    .line 69
    move-object v6, v7

    .line 70
    const-string v8, "NO_BID_REASON_UNSUPPORTED_DEVICE"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9, v9}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_UNSUPPORTED_DEVICE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 77
    .line 78
    new-instance v8, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 79
    .line 80
    move-object v7, v8

    .line 81
    const-string v9, "NO_BID_REASON_BLOCKED"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10, v10}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_BLOCKED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 88
    .line 89
    new-instance v9, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 90
    .line 91
    move-object v8, v9

    .line 92
    const-string v10, "NO_BID_REASON_UNMATCHED_USER"

    .line 93
    .line 94
    const/16 v11, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v10, v11, v11}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_UNMATCHED_USER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 100
    .line 101
    new-instance v10, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 102
    .line 103
    move-object v9, v10

    .line 104
    const-string v11, "NO_BID_REASON_DAILY_USER_CAP_MET"

    .line 105
    .line 106
    const/16 v12, 0x9

    .line 107
    .line 108
    invoke-direct {v10, v11, v12, v12}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_DAILY_USER_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 112
    .line 113
    new-instance v11, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 114
    .line 115
    move-object v10, v11

    .line 116
    const-string v12, "NO_BID_REASON_DAILY_DOMAIN_CAP_MET"

    .line 117
    .line 118
    const/16 v13, 0xa

    .line 119
    .line 120
    invoke-direct {v11, v12, v13, v13}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_DAILY_DOMAIN_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 124
    .line 125
    new-instance v12, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 126
    .line 127
    move-object v11, v12

    .line 128
    const-string v13, "NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE"

    .line 129
    .line 130
    const/16 v14, 0xb

    .line 131
    .line 132
    invoke-direct {v12, v13, v14, v14}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v12, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 136
    .line 137
    new-instance v13, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 138
    .line 139
    move-object v12, v13

    .line 140
    const-string v14, "NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION"

    .line 141
    .line 142
    const/16 v15, 0xc

    .line 143
    .line 144
    invoke-direct {v13, v14, v15, v15}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    sput-object v13, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 148
    .line 149
    new-instance v14, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 150
    .line 151
    move-object v13, v14

    .line 152
    const-string v15, "NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE"

    .line 153
    .line 154
    move-object/from16 v17, v0

    .line 155
    .line 156
    const/16 v0, 0xd

    .line 157
    .line 158
    invoke-direct {v14, v15, v0, v0}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    sput-object v14, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 162
    .line 163
    new-instance v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 164
    .line 165
    move-object v14, v0

    .line 166
    const-string v15, "NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION"

    .line 167
    .line 168
    move-object/from16 v18, v1

    .line 169
    .line 170
    const/16 v1, 0xe

    .line 171
    .line 172
    invoke-direct {v0, v15, v1, v1}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 176
    .line 177
    new-instance v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 178
    .line 179
    move-object v15, v0

    .line 180
    const-string v1, "NO_BID_REASON_INSUFFICIENT_AUCTION_TIME"

    .line 181
    .line 182
    move-object/from16 v19, v2

    .line 183
    .line 184
    const/16 v2, 0xf

    .line 185
    .line 186
    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INSUFFICIENT_AUCTION_TIME:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 190
    .line 191
    new-instance v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 192
    .line 193
    move-object/from16 v16, v0

    .line 194
    .line 195
    const/16 v1, 0x10

    .line 196
    .line 197
    const/4 v2, -0x1

    .line 198
    move-object/from16 v20, v3

    .line 199
    .line 200
    const-string v3, "UNRECOGNIZED"

    .line 201
    .line 202
    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/openrtb/NoBidReason;-><init>(Ljava/lang/String;II)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 206
    .line 207
    move-object/from16 v0, v17

    .line 208
    .line 209
    move-object/from16 v1, v18

    .line 210
    .line 211
    move-object/from16 v2, v19

    .line 212
    .line 213
    move-object/from16 v3, v20

    .line 214
    .line 215
    filled-new-array/range {v0 .. v16}, [Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->$VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 220
    .line 221
    new-instance v0, Lcom/explorestack/protobuf/openrtb/NoBidReason$a;

    .line 222
    .line 223
    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/NoBidReason$a;-><init>()V

    .line 224
    .line 225
    .line 226
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 227
    .line 228
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->values()[Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    sput-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 233
    .line 234
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
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INSUFFICIENT_AUCTION_TIME:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_DAILY_DOMAIN_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_DAILY_USER_CAP_MET:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_UNMATCHED_USER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_BLOCKED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_UNSUPPORTED_DEVICE:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_PROXY_IP:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_NON_HUMAN_TRAFFIC:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_KNOWN_WEB_CRAWLER:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID_REQUEST:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_TECHNICAL_ERROR:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->NO_BID_REASON_INVALID:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 52
    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
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

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    const/4 v1, 0x0

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
            "Lcom/explorestack/protobuf/openrtb/NoBidReason;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->forNumber(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->$VALUES:[Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/NoBidReason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->value:I

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
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
