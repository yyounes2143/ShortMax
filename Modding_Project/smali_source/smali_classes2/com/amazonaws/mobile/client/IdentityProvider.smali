.class public final enum Lcom/amazonaws/mobile/client/IdentityProvider;
.super Ljava/lang/Enum;
.source "IdentityProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/IdentityProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum AMAZON:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum FACEBOOK:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum GOOGLE:Lcom/amazonaws/mobile/client/IdentityProvider;

.field public static final enum TWITTER:Lcom/amazonaws/mobile/client/IdentityProvider;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "www.amazon.com"

    .line 5
    .line 6
    .line 7
    const-string v3, "AMAZON"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->AMAZON:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-string v3, "graph.facebook.com"

    .line 18
    .line 19
    const-string v4, "FACEBOOK"

    .line 20
    .line 21
    invoke-direct {v1, v4, v2, v3}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->FACEBOOK:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 25
    .line 26
    new-instance v2, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    const-string v4, "accounts.google.com"

    .line 30
    .line 31
    const-string v5, "GOOGLE"

    .line 32
    .line 33
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/amazonaws/mobile/client/IdentityProvider;->GOOGLE:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 37
    .line 38
    new-instance v3, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    const-string v5, "api.twitter.com"

    .line 42
    .line 43
    const-string v6, "TWITTER"

    .line 44
    .line 45
    invoke-direct {v3, v6, v4, v5}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lcom/amazonaws/mobile/client/IdentityProvider;->TWITTER:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 49
    .line 50
    new-instance v4, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    const-string v6, "cognito-identity.amazonaws.com"

    .line 54
    .line 55
    const-string v7, "DEVELOPER"

    .line 56
    .line 57
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/mobile/client/IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v4, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 61
    .line 62
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->$VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 67
    .line 68
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
    iput-object p3, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/IdentityProvider;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/IdentityProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/IdentityProvider;->$VALUES:[Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/IdentityProvider;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/IdentityProvider;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
