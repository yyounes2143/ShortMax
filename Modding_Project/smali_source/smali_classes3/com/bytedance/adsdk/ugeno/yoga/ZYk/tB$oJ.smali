.class public Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private BTZ:F

.field private Pfn:F

.field private PiB:F

.field private RZ:F

.field private Ry:F

.field private WcQ:F

.field ZYk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private awB:F

.field private ba:F

.field private cFZ:F

.field private dLZ:F

.field private eZI:F

.field private ex:F

.field private jFA:F

.field private kkU:F

.field oJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private si:F

.field private so:F

.field private tB:F


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk:Landroid/util/SparseArray;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_2

    if-ltz p2, :cond_3

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk:Landroid/util/SparseArray;

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ZYk:Landroid/util/SparseArray;

    .line 7
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    :cond_1
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public BTZ(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ex:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public Pfn(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->dLZ:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public PiB(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->Pfn:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x13

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public WcQ(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->ba:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public ZYk(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->so:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public awB(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->si:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public ba(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->BTZ:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public cFZ(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->PiB:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dLZ(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->tB:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public eZI(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->Ry:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x1b

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public ex(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->kkU:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public jFA(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->awB:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public kkU(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->eZI:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public oJ(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->cFZ:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public si(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->RZ:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public so(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->WcQ:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public tB(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->jFA:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB$oJ;->oJ:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x7

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
