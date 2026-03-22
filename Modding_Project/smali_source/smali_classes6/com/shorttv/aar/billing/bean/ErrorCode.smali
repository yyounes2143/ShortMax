.class public final enum Lcom/shorttv/aar/billing/bean/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shorttv/aar/billing/bean/ErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum BILLING_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum DEVELOPER_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum ITEM_NOT_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum ITEM_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum OK:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum SERVICE_DISCONNECTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum SERVICE_TIMEOUT:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

.field public static final enum USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/shorttv/aar/billing/bean/ErrorCode;
    .locals 14

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 2
    .line 3
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_TIMEOUT:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 4
    .line 5
    sget-object v2, Lcom/shorttv/aar/billing/bean/ErrorCode;->FEATURE_NOT_SUPPORTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 6
    .line 7
    sget-object v3, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_DISCONNECTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 8
    .line 9
    sget-object v4, Lcom/shorttv/aar/billing/bean/ErrorCode;->OK:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 10
    .line 11
    sget-object v5, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 12
    .line 13
    sget-object v6, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 14
    .line 15
    sget-object v7, Lcom/shorttv/aar/billing/bean/ErrorCode;->BILLING_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 16
    .line 17
    sget-object v8, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 18
    .line 19
    sget-object v9, Lcom/shorttv/aar/billing/bean/ErrorCode;->DEVELOPER_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 20
    .line 21
    sget-object v10, Lcom/shorttv/aar/billing/bean/ErrorCode;->ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 22
    .line 23
    sget-object v11, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 24
    .line 25
    sget-object v12, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_NOT_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 26
    .line 27
    sget-object v13, Lcom/shorttv/aar/billing/bean/ErrorCode;->NETWORK_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 2
    .line 3
    const/16 v1, -0x3e8

    .line 4
    .line 5
    const-string v2, "UNKNOWN"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 12
    .line 13
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 14
    .line 15
    const/4 v1, -0x3

    .line 16
    const-string v2, "SERVICE_TIMEOUT"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v0, v2, v4, v1}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_TIMEOUT:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 23
    .line 24
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 25
    .line 26
    const/4 v1, -0x2

    .line 27
    const-string v2, "FEATURE_NOT_SUPPORTED"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v0, v2, v5, v1}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->FEATURE_NOT_SUPPORTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 34
    .line 35
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    const-string v2, "SERVICE_DISCONNECTED"

    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    invoke-direct {v0, v2, v6, v1}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_DISCONNECTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 45
    .line 46
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 47
    .line 48
    const-string v1, "OK"

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-direct {v0, v1, v2, v3}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->OK:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 55
    .line 56
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 57
    .line 58
    const-string v1, "USER_CANCELED"

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    invoke-direct {v0, v1, v3, v4}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 65
    .line 66
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 67
    .line 68
    const-string v1, "SERVICE_UNAVAILABLE"

    .line 69
    .line 70
    const/4 v4, 0x6

    .line 71
    invoke-direct {v0, v1, v4, v5}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 75
    .line 76
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 77
    .line 78
    const-string v1, "BILLING_UNAVAILABLE"

    .line 79
    .line 80
    const/4 v5, 0x7

    .line 81
    invoke-direct {v0, v1, v5, v6}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->BILLING_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 85
    .line 86
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 87
    .line 88
    const-string v1, "ITEM_UNAVAILABLE"

    .line 89
    .line 90
    const/16 v6, 0x8

    .line 91
    .line 92
    invoke-direct {v0, v1, v6, v2}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 96
    .line 97
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 98
    .line 99
    const-string v1, "DEVELOPER_ERROR"

    .line 100
    .line 101
    const/16 v2, 0x9

    .line 102
    .line 103
    invoke-direct {v0, v1, v2, v3}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->DEVELOPER_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 107
    .line 108
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 109
    .line 110
    const-string v1, "ERROR"

    .line 111
    .line 112
    const/16 v2, 0xa

    .line 113
    .line 114
    invoke-direct {v0, v1, v2, v4}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 118
    .line 119
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 120
    .line 121
    const-string v1, "ITEM_ALREADY_OWNED"

    .line 122
    .line 123
    const/16 v2, 0xb

    .line 124
    .line 125
    invoke-direct {v0, v1, v2, v5}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 129
    .line 130
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 131
    .line 132
    const-string v1, "ITEM_NOT_OWNED"

    .line 133
    .line 134
    const/16 v2, 0xc

    .line 135
    .line 136
    invoke-direct {v0, v1, v2, v6}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_NOT_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 140
    .line 141
    new-instance v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 142
    .line 143
    const-string v1, "NETWORK_ERROR"

    .line 144
    .line 145
    const/16 v3, 0xd

    .line 146
    .line 147
    invoke-direct {v0, v1, v3, v2}, Lcom/shorttv/aar/billing/bean/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->NETWORK_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 151
    .line 152
    invoke-static {}, Lcom/shorttv/aar/billing/bean/ErrorCode;->$values()[Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->$VALUES:[Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->$ENTRIES:Lss/a;

    .line 163
    .line 164
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
    iput p3, p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/shorttv/aar/billing/bean/ErrorCode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shorttv/aar/billing/bean/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/shorttv/aar/billing/bean/ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->$VALUES:[Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->value:I

    .line 2
    .line 3
    return v0
.end method
