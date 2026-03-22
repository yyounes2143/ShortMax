.class public final Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ex/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "oJ"
.end annotation


# instance fields
.field private final BTZ:I

.field private Pfn:Ljava/lang/String;

.field private PiB:Ljava/lang/String;

.field private QSm:Ljava/lang/String;

.field private RZ:Z

.field private Ry:I

.field private WcQ:Lcom/bytedance/sdk/openadsdk/ex/ZYk/ZYk;

.field private ZYk:Ljava/lang/String;

.field private awB:Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

.field private ba:Ljava/lang/String;

.field private cFZ:Ljava/lang/String;

.field private dLZ:Ljava/lang/String;

.field private final eZI:J

.field private ex:Ljava/lang/String;

.field private jFA:Ljava/lang/String;

.field private kkU:Lorg/json/JSONObject;

.field public oJ:I

.field private si:I

.field private so:Ljava/lang/String;

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->si:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Ry:I

    .line 8
    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ:I

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->RZ:Z

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NO()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->si:I

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Ry:I

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ:I

    .line 36
    .line 37
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->eZI:J

    .line 38
    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->BTZ:I

    .line 48
    .line 49
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->PiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->kkU:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->si:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->awB:Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

    return-object p0
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Ry:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Pfn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->dLZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->BTZ:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->RZ:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->tB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->cFZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ZYk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->kkU:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->so:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ba:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->so:Ljava/lang/String;

    return-object p0
.end method

.method public ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->tB:Ljava/lang/String;

    return-object p0
.end method

.method public ba(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->jFA:Ljava/lang/String;

    return-object p0
.end method

.method public cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->cFZ:Ljava/lang/String;

    return-object p0
.end method

.method public ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Pfn:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->PiB:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->kkU:Lorg/json/JSONObject;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;)V
    .locals 5

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ex:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->QSm:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->cFZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->tB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->awB:Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/oJ;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->WcQ:Lcom/bytedance/sdk/openadsdk/ex/ZYk/ZYk;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->eZI:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/ZYk/ZYk;->oJ(Lorg/json/JSONObject;J)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/ZYk/tB;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/ZYk/tB;-><init>()V

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->eZI:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/ZYk/tB;->oJ(Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ$1;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/oJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;)V

    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ;)V

    return-void
.end method

.method public so(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->QSm:Ljava/lang/String;

    return-object p0
.end method

.method public tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ex:Ljava/lang/String;

    return-object p0
.end method
