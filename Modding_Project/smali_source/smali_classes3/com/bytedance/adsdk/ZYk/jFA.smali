.class public Lcom/bytedance/adsdk/ZYk/jFA;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ZYk/jFA$ZYk;,
        Lcom/bytedance/adsdk/ZYk/jFA$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

.field private final HL:Landroid/graphics/Matrix;

.field private HyG:Landroid/graphics/Matrix;

.field private IUZ:Landroid/graphics/Bitmap;

.field private Id:Z

.field private Jc:Landroid/graphics/Paint;

.field private Ln:Landroid/graphics/Canvas;

.field private LpP:Landroid/graphics/Rect;

.field private final Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

.field private PiB:Ljava/lang/String;

.field private QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

.field private RZ:Z

.field private Rl:Z

.field private Ry:Z

.field private UN:Landroid/graphics/Rect;

.field private WcQ:Lcom/bytedance/adsdk/ZYk/ex;

.field private XAo:Landroid/graphics/RectF;

.field private Xe:Lcom/bytedance/adsdk/ZYk/RZ;

.field ZYk:Lcom/bytedance/adsdk/ZYk/tB;

.field private awB:Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

.field private ba:Z

.field private cFZ:Z

.field private cY:Z

.field private cdg:Landroid/view/View;

.field private final dLZ:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private eZI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private ex:Lcom/bytedance/adsdk/ZYk/cFZ;

.field private jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

.field private jr:Z

.field private final kkU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/adsdk/ZYk/jFA$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private mu:Landroid/graphics/Rect;

.field private nke:Landroid/graphics/RectF;

.field oJ:Ljava/lang/String;

.field private ofl:Landroid/graphics/RectF;

.field private oq:I

.field private si:Z

.field private so:Z

.field tB:Lcom/bytedance/adsdk/ZYk/QSm;

.field private tb:Z

.field private wd:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ba:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cFZ:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->so:Z

    .line 18
    .line 19
    sget-object v3, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 20
    .line 21
    iput-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v3, Lcom/bytedance/adsdk/ZYk/jFA$1;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ZYk/jFA$1;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->dLZ:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ry:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    .line 40
    .line 41
    const/16 v1, 0xff

    .line 42
    .line 43
    iput v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oq:I

    .line 44
    .line 45
    sget-object v1, Lcom/bytedance/adsdk/ZYk/RZ;->oJ:Lcom/bytedance/adsdk/ZYk/RZ;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Xe:Lcom/bytedance/adsdk/ZYk/RZ;

    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tb:Z

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private Jc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ba:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cFZ:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private UN()Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->XAo()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;->oJ(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->PiB:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->WcQ:Lcom/bytedance/adsdk/ZYk/ex;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/bytedance/adsdk/ZYk/cFZ;->eZI()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/ex;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 44
    .line 45
    return-object v0
.end method

.method private XAo()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    return-object v1
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ZYk/jFA;)Lcom/bytedance/adsdk/ZYk/ba/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    return-object p0
.end method

.method private ZYk(II)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    .line 22
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ln:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    :cond_2
    return-void

    .line 24
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    .line 25
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ln:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    return-void
.end method

.method private mu()Lcom/bytedance/adsdk/ZYk/ZYk/oJ;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->awB:Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ZYk:Lcom/bytedance/adsdk/ZYk/tB;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/bytedance/adsdk/ZYk/tB;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->awB:Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oJ:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->awB:Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    .line 34
    .line 35
    return-object v0
.end method

.method private nke()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Xe:Lcom/bytedance/adsdk/ZYk/RZ;

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->oJ()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->ZYk()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/adsdk/ZYk/RZ;->oJ(IZI)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tb:Z

    .line 23
    .line 24
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/jFA;)Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    return-object p0
.end method

.method private oJ(Landroid/content/Context;)V
    .locals 7

    .line 35
    iget-object v4, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v4, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v6, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 37
    invoke-static {v4}, Lcom/bytedance/adsdk/ZYk/Pfn/Id;->oJ(Lcom/bytedance/adsdk/ZYk/cFZ;)Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;

    move-result-object v2

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ZYk/cFZ;->PiB()Ljava/util/List;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/Pfn;Ljava/util/List;Lcom/bytedance/adsdk/ZYk/cFZ;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 38
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cY:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 39
    invoke-virtual {v6, p1}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->oJ(Z)V

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->ZYk(Z)V

    return-void
.end method

.method private oJ(Landroid/graphics/Canvas;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 79
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/cFZ;->ex()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/cFZ;->ex()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 85
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 86
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oq:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private oJ(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;)V
    .locals 8

    .line 88
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->ofl()V

    .line 90
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 91
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->LpP:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 92
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->LpP:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->nke:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->nke:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 94
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->nke:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->LpP:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 95
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->oJ(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 102
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/RectF;FF)V

    .line 103
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->wd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ZYk/jFA;->LpP:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 106
    iget-object v4, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/bytedance/adsdk/ZYk/jFA;->ZYk(II)V

    .line 108
    iget-boolean v5, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    if-eqz v5, :cond_4

    .line 109
    iget-object v5, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v5, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 111
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 112
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ln:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HL:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oq:I

    invoke-virtual {p2, v0, v2, v5}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 114
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HyG:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 115
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HyG:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->XAo:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 116
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->XAo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->mu:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 117
    :cond_4
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->UN:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->UN:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->mu:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Jc:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private oJ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 125
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private oJ(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 126
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private oJ(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    .line 119
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 124
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private ofl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ln:Landroid/graphics/Canvas;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ln:Landroid/graphics/Canvas;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->wd:Landroid/graphics/Matrix;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->HyG:Landroid/graphics/Matrix;

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->LpP:Landroid/graphics/Rect;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->nke:Landroid/graphics/RectF;

    .line 47
    .line 48
    new-instance v0, Lcom/bytedance/adsdk/ZYk/oJ/oJ;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Jc:Landroid/graphics/Paint;

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->UN:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->mu:Landroid/graphics/Rect;

    .line 68
    .line 69
    new-instance v0, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->XAo:Landroid/graphics/RectF;

    .line 75
    .line 76
    return-void
.end method

.method private wd()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    return v2
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->BTZ()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public HL()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->cancel()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public IUZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->PiB()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public Id()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public Ln()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->ba()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public LpP()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ofl:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->UN()Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;->oJ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Pfn(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public Pfn(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jr:Z

    return-void
.end method

.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ry:Z

    return v0
.end method

.method public PiB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$7;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ZYk/jFA$7;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->nke()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->Jc()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->oq()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->WcQ()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->tB:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->Jc()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->eZI()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gez v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->WcQ()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->awB()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_1
    float-to-int v0, v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ZYk/jFA;->tB(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->BTZ()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public QSm()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public RZ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->cFZ()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public Ry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->removeAllListeners()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public WcQ()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->awB()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Xe()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->eZI:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tB:Lcom/bytedance/adsdk/ZYk/QSm;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->WcQ()Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    return-object v0
.end method

.method public ZYk(F)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$11;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$11;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->ba()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ZYk/cFZ;->cFZ()F

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->ZYk(F)V

    return-void
.end method

.method public ZYk(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$10;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->ZYk(F)V

    return-void
.end method

.method public ZYk(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public ZYk(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$12;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$12;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/cFZ;->tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/tB/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget p1, v0, Lcom/bytedance/adsdk/ZYk/tB/ba;->oJ:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(I)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ZYk(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Ry:Z

    return-void
.end method

.method public awB()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->eZI()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ba()Lcom/bytedance/adsdk/ZYk/RZ;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tb:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/ZYk/RZ;->tB:Lcom/bytedance/adsdk/ZYk/RZ;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/ZYk/RZ;->ZYk:Lcom/bytedance/adsdk/ZYk/RZ;

    return-object v0
.end method

.method public ba(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/kkU;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->eZI()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ZYk/kkU;

    return-object p1
.end method

.method public ba(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->so:Z

    return-void
.end method

.method public cFZ(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oJ:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->mu()Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;->oJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cFZ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cFZ:Z

    return-void
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tb:Z

    return v0
.end method

.method cY()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 15
    .line 16
    sget-object v1, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->ZYk:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->tB:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public dLZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$6;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ZYk/jFA$6;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->nke()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->Jc()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->oq()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->dLZ()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->ZYk:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->Jc()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->eZI()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gez v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->WcQ()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->awB()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_1
    float-to-int v0, v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ZYk/jFA;->tB(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->BTZ()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const-string v0, "Drawable#draw"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/Pfn;->oJ(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tb:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 11
    .line 12
    invoke-direct {p0, p1, v1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :catchall_0
    :goto_0
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/Pfn;->ZYk(Ljava/lang/String;)F

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public eZI()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->kkU()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->PiB:Ljava/lang/String;

    return-object v0
.end method

.method public ex(F)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$5;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$5;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/Pfn;->oJ(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ZYk/cFZ;->oJ(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->oJ(F)V

    .line 16
    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/Pfn;->ZYk(Ljava/lang/String;)F

    return-void
.end method

.method public ex(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->setRepeatMode(I)V

    return-void
.end method

.method public ex(Ljava/lang/String;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$2;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/cFZ;->tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/tB/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget p1, v0, Lcom/bytedance/adsdk/ZYk/tB/ba;->oJ:F

    float-to-int p1, p1

    .line 10
    iget v0, v0, Lcom/bytedance/adsdk/ZYk/tB/ba;->ZYk:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(II)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ex(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cY:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cY:Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->oJ(Z)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oq:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->ex()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->ex()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->Id()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jr:Z

    .line 2
    .line 3
    return v0
.end method

.method public jr()Lcom/bytedance/adsdk/ZYk/QSm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tB:Lcom/bytedance/adsdk/ZYk/QSm;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->cancel()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->so()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->UN()Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;->oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    return-object p1
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/tB/tB;)Landroid/graphics/Typeface;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->eZI:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/tB/tB;->oJ()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/tB/tB;->ZYk()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/tB/tB;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/tB/tB;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->mu()Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/tB/tB;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cdg:Landroid/view/View;

    return-object v0
.end method

.method public oJ(F)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$9;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$9;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->ba()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/cFZ;->cFZ()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(I)V

    return-void
.end method

.method public oJ(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$8;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->oJ(I)V

    return-void
.end method

.method public oJ(II)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/jFA$3;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ZYk/ba/tB;->oJ(FF)V

    return-void
.end method

.method public oJ(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public oJ(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->cdg:Landroid/view/View;

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/QSm;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->tB:Lcom/bytedance/adsdk/ZYk/QSm;

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/RZ;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Xe:Lcom/bytedance/adsdk/ZYk/RZ;

    .line 34
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->nke()V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/ex;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->WcQ:Lcom/bytedance/adsdk/ZYk/ex;

    .line 54
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ:Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ZYk/ZYk;->oJ(Lcom/bytedance/adsdk/ZYk/ex;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/tB;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ZYk:Lcom/bytedance/adsdk/ZYk/tB;

    .line 57
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->awB:Lcom/bytedance/adsdk/ZYk/ZYk/oJ;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/tB;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/Boolean;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ba:Z

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->PiB:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->eZI:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->eZI:Ljava/util/Map;

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    if-eq p1, v0, :cond_1

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    .line 10
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->QSm:Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->ZYk(Z)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public oJ(ZLandroid/content/Context;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->si:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->si:Z

    .line 6
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/cFZ;Landroid/content/Context;)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Rl:Z

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->kkU()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 18
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Landroid/content/Context;)V

    .line 19
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->oJ(Lcom/bytedance/adsdk/ZYk/cFZ;)V

    .line 20
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/ba/tB;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ZYk/jFA;->ex(F)V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ZYk/jFA$oJ;

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ZYk/jFA$oJ;->oJ(Lcom/bytedance/adsdk/ZYk/cFZ;)V

    .line 25
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-boolean p2, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Id:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/cFZ;->ZYk(Z)V

    .line 28
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->nke()V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 30
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 31
    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public oq()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->oq:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 12
    .line 13
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->ZYk:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->dLZ()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->tB:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->PiB()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->isRunning()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->IUZ()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->tB:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget-object p1, Lcom/bytedance/adsdk/ZYk/jFA$ZYk;->oJ:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->jFA:Lcom/bytedance/adsdk/ZYk/jFA$ZYk;

    .line 50
    .line 51
    :cond_3
    :goto_0
    return p2
.end method

.method public si()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->removeAllUpdateListeners()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->dLZ:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ZYk/ba/oJ;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public so()Lcom/bytedance/adsdk/ZYk/Ry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ;->tB()Lcom/bytedance/adsdk/ZYk/Ry;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public so(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->tB(Z)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->dLZ()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/jFA;->BTZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public tB(F)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->tB(F)V

    return-void
.end method

.method public tB(I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$4;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Pfn:Lcom/bytedance/adsdk/ZYk/ba/tB;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba/tB;->oJ(F)V

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->kkU:Ljava/util/ArrayList;

    new-instance v1, Lcom/bytedance/adsdk/ZYk/jFA$13;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA$13;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/cFZ;->tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/tB/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget p1, v0, Lcom/bytedance/adsdk/ZYk/tB/ba;->oJ:F

    iget v0, v0, Lcom/bytedance/adsdk/ZYk/tB/ba;->ZYk:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/jFA;->ZYk(I)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tB(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/jFA;->Id:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/cFZ;->ZYk(Z)V

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->RZ:Z

    return v0
.end method

.method public tb()Lcom/bytedance/adsdk/ZYk/cFZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA;->ex:Lcom/bytedance/adsdk/ZYk/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
