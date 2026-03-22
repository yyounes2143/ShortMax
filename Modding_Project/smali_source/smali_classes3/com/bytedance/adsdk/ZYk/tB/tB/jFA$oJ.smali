.class Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ZYk/tB/tB/jFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# instance fields
.field private ZYk:F

.field private oJ:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->oJ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->ZYk:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;-><init>()V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->ZYk:F

    return p0
.end method


# virtual methods
.method oJ(Ljava/lang/String;F)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->oJ:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/bytedance/adsdk/ZYk/tB/tB/jFA$oJ;->ZYk:F

    return-void
.end method
