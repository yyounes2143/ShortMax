.class public final enum Lai/turbolink/sdk/utils/TurboLinkCode;
.super Ljava/lang/Enum;
.source "TurboLinkCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/utils/TurboLinkCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/utils/TurboLinkCode;

.field public static final enum ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

.field public static final enum ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

.field public static final enum ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

.field public static final enum SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/utils/TurboLinkCode;
    .locals 4

    .line 1
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 6
    .line 7
    sget-object v3, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    const-string v2, "ok"

    .line 6
    .line 7
    const-string v3, "SUCCESS"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/utils/TurboLinkCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 14
    .line 15
    new-instance v0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 16
    .line 17
    const/16 v1, 0x4e21

    .line 18
    .line 19
    const-string v2, "NO_CONNECTIVITY"

    .line 20
    .line 21
    const-string v3, "ERROR_NO_CONNECTIVITY"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/utils/TurboLinkCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 28
    .line 29
    new-instance v0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 30
    .line 31
    const/16 v1, 0x4e22

    .line 32
    .line 33
    const-string v2, "INVALID_REQUEST"

    .line 34
    .line 35
    const-string v3, "ERROR_INVALID_REQUEST"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/utils/TurboLinkCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 42
    .line 43
    new-instance v0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 44
    .line 45
    const/16 v1, 0x1f4

    .line 46
    .line 47
    const-string v2, "gateway"

    .line 48
    .line 49
    const-string v3, "ERROR_GATEWAY"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/utils/TurboLinkCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 56
    .line 57
    invoke-static {}, Lai/turbolink/sdk/utils/TurboLinkCode;->$values()[Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->$VALUES:[Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->code:I

    .line 5
    .line 6
    iput-object p4, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->message:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/utils/TurboLinkCode;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/utils/TurboLinkCode;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->$VALUES:[Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/utils/TurboLinkCode;->message:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
