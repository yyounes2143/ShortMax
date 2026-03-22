.class public Lcom/bytedance/sdk/openadsdk/core/model/eZI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/tB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    }
.end annotation


# instance fields
.field public BTZ:I

.field public final Pfn:J

.field public PiB:Lorg/json/JSONObject;

.field public RZ:I

.field public Ry:Z

.field public WcQ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field public final ZYk:F

.field public final awB:Z

.field public final ba:J

.field public final cFZ:I

.field public final dLZ:Ljava/lang/String;

.field public eZI:I

.field public final ex:F

.field public final jFA:I

.field public final kkU:I

.field public final oJ:F

.field public si:Lorg/json/JSONObject;

.field public final so:I

.field public final tB:F


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->oJ:F

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->ZYk:F

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->tB:F

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->ex:F

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Pfn:J

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->ba:J

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->cFZ:I

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->so(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->so:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->jFA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->kkU:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->dLZ:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->WcQ:Landroid/util/SparseArray;

    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->BTZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->awB:Z

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->BTZ:I

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->WcQ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->PiB:Lorg/json/JSONObject;

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->awB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->eZI:I

    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->eZI(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->si:Lorg/json/JSONObject;

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->si(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->RZ:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;Lcom/bytedance/sdk/openadsdk/core/model/eZI$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)V

    return-void
.end method
