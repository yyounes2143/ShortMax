.class public Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;
.implements Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;
.implements Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;


# instance fields
.field private final Pfn:Landroid/graphics/RectF;

.field private final ZYk:Landroid/graphics/RectF;

.field private final ba:Ljava/lang/String;

.field private final cFZ:Z

.field private dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

.field private final ex:Landroid/graphics/Path;

.field private final jFA:Lcom/bytedance/adsdk/ZYk/jFA;

.field private kkU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;",
            ">;"
        }
    .end annotation
.end field

.field private final oJ:Landroid/graphics/Paint;

.field private final so:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;"
        }
    .end annotation
.end field

.field private final tB:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/eZI;Lcom/bytedance/adsdk/ZYk/cFZ;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/eZI;->oJ()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/eZI;->tB()Z

    move-result v4

    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/eZI;->ZYk()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p4, p2, v0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 3
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/eZI;->ZYk()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ(Ljava/util/List;)Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Ljava/lang/String;ZLjava/util/List;Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;)V

    return-void
.end method

.method constructor <init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Ljava/lang/String;ZLjava/util/List;Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/jFA;",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ZYk:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ex:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->Pfn:Landroid/graphics/RectF;

    .line 11
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ba:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->jFA:Lcom/bytedance/adsdk/ZYk/jFA;

    .line 13
    iput-boolean p4, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->cFZ:Z

    .line 14
    iput-object p5, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 15
    invoke-virtual {p6}, Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;->kkU()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    .line 16
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->oJ(Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V

    .line 18
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 20
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    .line 21
    instance-of p4, p3, Lcom/bytedance/adsdk/ZYk/oJ/oJ/kkU;

    if-eqz p4, :cond_1

    .line 22
    check-cast p3, Lcom/bytedance/adsdk/ZYk/oJ/oJ/kkU;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/ZYk/oJ/oJ/kkU;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/kkU;->oJ(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private Pfn()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v3, v3, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0
.end method

.method static oJ(Ljava/util/List;)Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;",
            ">;)",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;

    .line 7
    instance-of v2, v1, Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/jFA;",
            "Lcom/bytedance/adsdk/ZYk/cFZ;",
            "Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;

    invoke-interface {v2, p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method ZYk()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->kkU:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->kkU:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    .line 28
    .line 29
    instance-of v2, v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->kkU:Ljava/util/List;

    .line 34
    .line 35
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;

    .line 36
    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->kkU:Ljava/util/List;

    .line 44
    .line 45
    return-object v0
.end method

.method public ex()Landroid/graphics/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->ex()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ex:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->cFZ:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ex:Landroid/graphics/Path;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v0, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    .line 48
    .line 49
    instance-of v2, v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ex:Landroid/graphics/Path;

    .line 54
    .line 55
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;->ex()Landroid/graphics/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 62
    .line 63
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ex:Landroid/graphics/Path;

    .line 70
    .line 71
    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->jFA:Lcom/bytedance/adsdk/ZYk/jFA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    return-void
.end method

.method public oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->cFZ:Z

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 18
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    if-eqz p2, :cond_2

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->ex()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 20
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->cFZ()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    .line 21
    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->jFA:Lcom/bytedance/adsdk/ZYk/jFA;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/jFA;->jFA()Z

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->Pfn()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eq p3, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 22
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ZYk:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ZYk:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 24
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->ZYk:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->oJ:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/bytedance/adsdk/ZYk/ba/ba;->oJ(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p2, :cond_5

    move p3, v0

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_7

    .line 27
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;

    if-eqz v2, :cond_6

    .line 29
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;->oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public oJ(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 32
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->ex()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->Pfn:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 36
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    .line 37
    instance-of v1, v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->Pfn:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/Pfn;->oJ(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->Pfn:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public oJ(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;

    .line 14
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->so:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)V

    .line 15
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method tB()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->dLZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/eZI;->ex()Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ex;->tB:Landroid/graphics/Matrix;

    .line 16
    .line 17
    return-object v0
.end method
