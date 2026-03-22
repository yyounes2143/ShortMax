.class final enum Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
.super Ljava/lang/Enum;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SignInMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;


# instance fields
.field encode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "0"

    .line 5
    .line 6
    const-string v3, "SIGN_IN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 12
    .line 13
    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "1"

    .line 17
    .line 18
    const-string v4, "FEDERATED_SIGN_IN"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 24
    .line 25
    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "2"

    .line 29
    .line 30
    const-string v5, "HOSTED_UI"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 36
    .line 37
    new-instance v3, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "3"

    .line 41
    .line 42
    const-string v6, "OAUTH2"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 48
    .line 49
    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "-1"

    .line 53
    .line 54
    const-string v7, "UNKNOWN"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 60
    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->$VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 66
    .line 67
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
    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->encode:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .locals 1

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "1"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->FEDERATED_SIGN_IN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "2"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "3"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    sget-object p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->UNKNOWN:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 46
    .line 47
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->$VALUES:[Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->encode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
