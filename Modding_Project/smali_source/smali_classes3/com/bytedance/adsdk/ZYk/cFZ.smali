.class public Lcom/bytedance/adsdk/ZYk/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ZYk/cFZ$oJ;,
        Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;,
        Lcom/bytedance/adsdk/ZYk/cFZ$tB;
    }
.end annotation


# instance fields
.field private BTZ:F

.field private Pfn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/tB/tB;",
            ">;"
        }
    .end annotation
.end field

.field private PiB:F

.field private RZ:Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;

.field private Ry:Lcom/bytedance/adsdk/ZYk/cFZ$oJ;

.field private WcQ:Z

.field private final ZYk:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private awB:I

.field private ba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/ba;",
            ">;"
        }
    .end annotation
.end field

.field private cFZ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/ZYk/tB/ex;",
            ">;"
        }
    .end annotation
.end field

.field private dLZ:F

.field private eZI:Lcom/bytedance/adsdk/ZYk/cFZ$tB;

.field private ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/kkU;",
            ">;"
        }
    .end annotation
.end field

.field private jFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;"
        }
    .end annotation
.end field

.field private kkU:Landroid/graphics/Rect;

.field private final oJ:Lcom/bytedance/adsdk/ZYk/Ry;

.field private si:Ljava/lang/String;

.field private so:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;"
        }
    .end annotation
.end field

.field private tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/ZYk/Ry;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/adsdk/ZYk/Ry;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->oJ:Lcom/bytedance/adsdk/ZYk/Ry;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->ZYk:Ljava/util/HashSet;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->awB:I

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->si:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public BTZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->PiB:F

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/cFZ;->si()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->PiB:F

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    float-to-long v0, v0

    .line 12
    long-to-float v0, v0

    .line 13
    return v0
.end method

.method public PiB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->jFA:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/ZYk/tB/ex;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->cFZ:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->awB:I

    return v0
.end method

.method public ZYk(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public ZYk(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->oJ:Lcom/bytedance/adsdk/ZYk/Ry;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/Ry;->oJ(Z)V

    return-void
.end method

.method public awB()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/tB/tB;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->Pfn:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->dLZ:F

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->BTZ:F

    .line 2
    .line 3
    return v0
.end method

.method public dLZ()Lcom/bytedance/adsdk/ZYk/cFZ$oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->Ry:Lcom/bytedance/adsdk/ZYk/cFZ$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/kkU;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->ex:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->kkU:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->si:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->RZ:Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(F)F
    .locals 2

    .line 21
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->dLZ:F

    iget v1, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->BTZ:F

    invoke-static {v0, v1, p1}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    move-result p1

    return p1
.end method

.method public oJ(J)Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->so:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;

    return-object p1
.end method

.method public oJ(I)V
    .locals 1

    .line 18
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->awB:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->awB:I

    return-void
.end method

.method public oJ(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;Ljava/util/List;Lcom/bytedance/adsdk/ZYk/cFZ$tB;Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/cFZ$oJ;Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/kkU;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/ZYk/tB/ex;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/tB/tB;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/ba;",
            ">;",
            "Lcom/bytedance/adsdk/ZYk/cFZ$tB;",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/cFZ$oJ;",
            "Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->kkU:Landroid/graphics/Rect;

    move v1, p2

    .line 2
    iput v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->dLZ:F

    move v1, p3

    .line 3
    iput v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->BTZ:F

    move v1, p4

    .line 4
    iput v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->PiB:F

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->jFA:Ljava/util/List;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->so:Landroid/util/LongSparseArray;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->tB:Ljava/util/Map;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->ex:Ljava/util/Map;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->cFZ:Landroid/util/SparseArray;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->Pfn:Ljava/util/Map;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->ba:Ljava/util/List;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->eZI:Lcom/bytedance/adsdk/ZYk/cFZ$tB;

    move-object v1, p13

    .line 13
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->si:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->Ry:Lcom/bytedance/adsdk/ZYk/cFZ$oJ;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/bytedance/adsdk/ZYk/cFZ;->RZ:Lcom/bytedance/adsdk/ZYk/cFZ$ZYk;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->ZYk:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->WcQ:Z

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->WcQ:Z

    return v0
.end method

.method public si()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->BTZ:F

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->dLZ:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public so()Lcom/bytedance/adsdk/ZYk/cFZ$tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->eZI:Lcom/bytedance/adsdk/ZYk/cFZ$tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/Ry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->oJ:Lcom/bytedance/adsdk/ZYk/Ry;

    return-object v0
.end method

.method public tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/tB/ba;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->ba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->ba:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ZYk/tB/ba;

    .line 4
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ZYk/tB/ba;->oJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LottieComposition:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/cFZ;->jFA:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;

    .line 25
    .line 26
    const-string v3, "\t"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
