.class public final enum Lcom/hades/aar/auth/base/AuthType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hades/aar/auth/base/AuthType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hades/aar/auth/base/AuthType;

.field public static final enum CREDENTIAL:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum CUSTOM_TOKEN:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum EMAIL_SEND:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum EMAIL_VERIFY:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum GOOGLE:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum HUAWEI:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

.field public static final enum TWITTER:Lcom/hades/aar/auth/base/AuthType;


# direct methods
.method private static final synthetic $values()[Lcom/hades/aar/auth/base/AuthType;
    .locals 10

    .line 1
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->TWITTER:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    sget-object v3, Lcom/hades/aar/auth/base/AuthType;->EMAIL_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    sget-object v4, Lcom/hades/aar/auth/base/AuthType;->EMAIL_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 10
    .line 11
    sget-object v5, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 12
    .line 13
    sget-object v6, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 14
    .line 15
    sget-object v7, Lcom/hades/aar/auth/base/AuthType;->CUSTOM_TOKEN:Lcom/hades/aar/auth/base/AuthType;

    .line 16
    .line 17
    sget-object v8, Lcom/hades/aar/auth/base/AuthType;->CREDENTIAL:Lcom/hades/aar/auth/base/AuthType;

    .line 18
    .line 19
    sget-object v9, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/hades/aar/auth/base/AuthType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    const-string v1, "GOOGLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 10
    .line 11
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 12
    .line 13
    const-string v1, "TWITTER"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->TWITTER:Lcom/hades/aar/auth/base/AuthType;

    .line 20
    .line 21
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 22
    .line 23
    const-string v1, "FACEBOOK"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 30
    .line 31
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 32
    .line 33
    const-string v1, "EMAIL_VERIFY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->EMAIL_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 40
    .line 41
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 42
    .line 43
    const-string v1, "EMAIL_SEND"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->EMAIL_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 50
    .line 51
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 52
    .line 53
    const-string v1, "PHONE_VERIFY"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 60
    .line 61
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 62
    .line 63
    const-string v1, "PHONE_SEND"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 70
    .line 71
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 72
    .line 73
    const-string v1, "CUSTOM_TOKEN"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->CUSTOM_TOKEN:Lcom/hades/aar/auth/base/AuthType;

    .line 80
    .line 81
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 82
    .line 83
    const-string v1, "CREDENTIAL"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->CREDENTIAL:Lcom/hades/aar/auth/base/AuthType;

    .line 91
    .line 92
    new-instance v0, Lcom/hades/aar/auth/base/AuthType;

    .line 93
    .line 94
    const-string v1, "HUAWEI"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/hades/aar/auth/base/AuthType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 102
    .line 103
    invoke-static {}, Lcom/hades/aar/auth/base/AuthType;->$values()[Lcom/hades/aar/auth/base/AuthType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/hades/aar/auth/base/AuthType;->$VALUES:[Lcom/hades/aar/auth/base/AuthType;

    .line 108
    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hades/aar/auth/base/AuthType;
    .locals 1

    .line 1
    const-class v0, Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hades/aar/auth/base/AuthType;
    .locals 1

    .line 1
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->$VALUES:[Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    return-object v0
.end method
