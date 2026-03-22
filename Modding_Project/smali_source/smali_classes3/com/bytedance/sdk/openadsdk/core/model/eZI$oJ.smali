.class public Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/eZI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private BTZ:I

.field private Pfn:F

.field private PiB:Ljava/lang/String;

.field private RZ:Z

.field private Ry:Z

.field private WcQ:I

.field private ZYk:J

.field private awB:Lorg/json/JSONObject;

.field private ba:F

.field private cFZ:F

.field private dLZ:I

.field private eZI:I

.field private ex:F

.field private jFA:I

.field private kkU:I

.field protected oJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private si:Lorg/json/JSONObject;

.field private so:I

.field private tB:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Ry:Z

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic BTZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->RZ:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB:J

    return-wide v0
.end method

.method static synthetic PiB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->WcQ:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Ry(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->BTZ:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic WcQ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->awB:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba:F

    return p0
.end method

.method static synthetic awB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->eZI:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk:J

    return-wide v0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->so:I

    return p0
.end method

.method static synthetic dLZ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->PiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eZI(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->si:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex:F

    return p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->kkU:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->dLZ:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ:F

    return p0
.end method

.method static synthetic si(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Ry:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->jFA:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn:F

    return p0
.end method


# virtual methods
.method public Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->jFA:I

    return-object p0
.end method

.method public ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn:F

    return-object p0
.end method

.method public ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->WcQ:I

    return-object p0
.end method

.method public ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB:J

    return-object p0
.end method

.method public ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->si:Lorg/json/JSONObject;

    return-object p0
.end method

.method public ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Ry:Z

    return-object p0
.end method

.method public ba(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->kkU:I

    return-object p0
.end method

.method public cFZ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->dLZ:I

    return-object p0
.end method

.method public ex(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ:F

    return-object p0
.end method

.method public ex(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->so:I

    return-object p0
.end method

.method public oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex:F

    return-object p0
.end method

.method public oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->eZI:I

    return-object p0
.end method

.method public oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk:J

    return-object p0
.end method

.method public oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ:Landroid/util/SparseArray;

    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->PiB:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->awB:Lorg/json/JSONObject;

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->RZ:Z

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/model/eZI;
    .locals 2

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;Lcom/bytedance/sdk/openadsdk/core/model/eZI$1;)V

    return-object v0
.end method

.method public tB(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba:F

    return-object p0
.end method

.method public tB(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->BTZ:I

    return-object p0
.end method
