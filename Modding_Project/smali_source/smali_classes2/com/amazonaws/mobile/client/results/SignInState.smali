.class public final enum Lcom/amazonaws/mobile/client/results/SignInState;
.super Ljava/lang/Enum;
.source "SignInState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/results/SignInState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum ADMIN_NO_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DEVICE_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum DONE:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobile/client/results/SignInState;


# instance fields
.field private final serviceText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CONFIRMATION_CODE"

    .line 5
    .line 6
    const-string v3, "SMS_MFA"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 12
    .line 13
    new-instance v1, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 14
    .line 15
    const-string v2, "PASSWORD_VERIFIER"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v2, v3, v2}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/amazonaws/mobile/client/results/SignInState;->PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 22
    .line 23
    new-instance v2, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 24
    .line 25
    const-string v3, "CUSTOM_CHALLENGE"

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-direct {v2, v3, v4, v3}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/amazonaws/mobile/client/results/SignInState;->CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 32
    .line 33
    new-instance v3, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 34
    .line 35
    const-string v4, "DEVICE_SRP_AUTH"

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-direct {v3, v4, v5, v4}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v3, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 42
    .line 43
    new-instance v4, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 44
    .line 45
    const-string v5, "DEVICE_PASSWORD_VERIFIER"

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    invoke-direct {v4, v5, v6, v5}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/amazonaws/mobile/client/results/SignInState;->DEVICE_PASSWORD_VERIFIER:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 52
    .line 53
    new-instance v5, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 54
    .line 55
    const-string v6, "ADMIN_NO_SRP_AUTH"

    .line 56
    .line 57
    const/4 v7, 0x5

    .line 58
    invoke-direct {v5, v6, v7, v6}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Lcom/amazonaws/mobile/client/results/SignInState;->ADMIN_NO_SRP_AUTH:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 62
    .line 63
    new-instance v6, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 64
    .line 65
    const-string v7, "NEW_PASSWORD_REQUIRED"

    .line 66
    .line 67
    const/4 v8, 0x6

    .line 68
    invoke-direct {v6, v7, v8, v7}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v6, Lcom/amazonaws/mobile/client/results/SignInState;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 72
    .line 73
    new-instance v7, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 74
    .line 75
    const/4 v8, 0x7

    .line 76
    const-string v9, "This means the flow is complete."

    .line 77
    .line 78
    const-string v10, "DONE"

    .line 79
    .line 80
    invoke-direct {v7, v10, v8, v9}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 84
    .line 85
    new-instance v8, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 86
    .line 87
    const-string v9, "UNKNOWN"

    .line 88
    .line 89
    const/16 v10, 0x8

    .line 90
    .line 91
    invoke-direct {v8, v9, v10, v9}, Lcom/amazonaws/mobile/client/results/SignInState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v8, Lcom/amazonaws/mobile/client/results/SignInState;->UNKNOWN:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 95
    .line 96
    filled-new-array/range {v0 .. v8}, [Lcom/amazonaws/mobile/client/results/SignInState;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->$VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

    .line 101
    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/amazonaws/mobile/client/results/SignInState;->serviceText:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/results/SignInState;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/mobile/client/results/SignInState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/results/SignInState;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/results/SignInState;->$VALUES:[Lcom/amazonaws/mobile/client/results/SignInState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/results/SignInState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobile/client/results/SignInState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/SignInState;->serviceText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
