.class public final Lai/turbolink/sdk/TurboLink$RiskManager;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RiskManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$RiskManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static humanScore:I

.field private static humanScoreDetail:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static rootScore:I

.field private static simulateScore:I

.field private static vpnStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$RiskManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$RiskManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$RiskManager;->INSTANCE:Lai/turbolink/sdk/TurboLink$RiskManager;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lai/turbolink/sdk/TurboLink$RiskManager;->vpnStatus:I

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    sput-object v0, Lai/turbolink/sdk/TurboLink$RiskManager;->humanScoreDetail:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getHumanScore()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$RiskManager;->humanScore:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHumanScoreDetail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$RiskManager;->humanScoreDetail:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRootScore()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$RiskManager;->rootScore:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSimulateScore()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$RiskManager;->simulateScore:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVpnStatus()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$RiskManager;->vpnStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final setHumanScore(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$RiskManager;->humanScore:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHumanScoreDetail(Ljava/lang/String;)V
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
    sput-object p1, Lai/turbolink/sdk/TurboLink$RiskManager;->humanScoreDetail:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRootScore(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$RiskManager;->rootScore:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSimulateScore(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$RiskManager;->simulateScore:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVpnStatus(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$RiskManager;->vpnStatus:I

    .line 2
    .line 3
    return-void
.end method
