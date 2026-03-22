.class public abstract Lcom/bytedance/adsdk/ugeno/ba/oJ;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/so/tB$ex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/ba/oJ$tB;,
        Lcom/bytedance/adsdk/ugeno/ba/oJ$ZYk;,
        Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/adsdk/ugeno/so/tB$ex;"
    }
.end annotation


# static fields
.field private static final HL:Landroid/view/animation/Interpolator;


# instance fields
.field private BTZ:Z

.field private final IUZ:Ljava/lang/Runnable;

.field private Id:Landroid/widget/FrameLayout;

.field private final Ln:Ljava/lang/Runnable;

.field private Pfn:I

.field private PiB:Z

.field private QSm:I

.field private RZ:I

.field private Ry:I

.field private WcQ:Z

.field private Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

.field protected ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

.field private awB:Z

.field private ba:I

.field private cFZ:I

.field private cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

.field private dLZ:F

.field private eZI:Z

.field private ex:I

.field private jFA:I

.field private jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

.field private kkU:Ljava/lang/String;

.field protected oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private oq:I

.field private si:Z

.field private so:I

.field protected tB:Landroid/content/Context;

.field private tb:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->HL:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    .line 10
    .line 11
    const/16 v0, 0x7d0

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex:I

    .line 14
    .line 15
    const/16 v0, 0x1f4

    .line 16
    .line 17
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn:I

    .line 18
    .line 19
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    .line 26
    .line 27
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    .line 28
    .line 29
    const-string v2, "normal"

    .line 30
    .line 31
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->dLZ:F

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->BTZ:Z

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB:Z

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->awB:Z

    .line 45
    .line 46
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    .line 47
    .line 48
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->RZ:I

    .line 49
    .line 50
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->QSm:I

    .line 51
    .line 52
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oq:I

    .line 53
    .line 54
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$2;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ$2;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->IUZ:Ljava/lang/Runnable;

    .line 60
    .line 61
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$3;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ$3;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ln:Ljava/lang/Runnable;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB:Landroid/content/Context;

    .line 69
    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Id:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ()Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 82
    .line 83
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    const/16 v0, 0x11

    .line 89
    .line 90
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Id:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 95
    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Id:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/adsdk/ugeno/ba/oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex:I

    return p0
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ugeno/ba/oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->dLZ:F

    return p0
.end method

.method static synthetic ba(Lcom/bytedance/adsdk/ugeno/ba/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->awB:Z

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/adsdk/ugeno/ba/oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oq:I

    return p0
.end method

.method private cFZ()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ex(Lcom/bytedance/adsdk/ugeno/ba/oJ;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ln:Ljava/lang/Runnable;

    return-object p0
.end method

.method private oJ(ILandroid/view/View;)V
    .locals 3

    .line 63
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 64
    const-string v0, "two_items_tag"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, p1, v1}, Lcom/bytedance/adsdk/ugeno/ba/ex;->oJ(ZII)I

    move-result p1

    .line 66
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 67
    :cond_1
    instance-of v1, p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v1, :cond_2

    .line 68
    check-cast p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 71
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    :cond_5
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/ba/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    return p0
.end method

.method static synthetic so(Lcom/bytedance/adsdk/ugeno/ba/oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba:I

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/adsdk/ugeno/ba/oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB:Z

    return p0
.end method


# virtual methods
.method public BTZ(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->eZI:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/ba/tB;->oJ(ZI)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public Pfn(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->dLZ:F

    return-object p0
.end method

.method public Pfn(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setSelectedColor(I)V

    return-object p0
.end method

.method public Pfn(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->eZI:Z

    return-object p0
.end method

.method public Pfn()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ln:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ln:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public PiB(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    .line 2
    .line 3
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    .line 4
    .line 5
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    .line 6
    .line 7
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(Lcom/bytedance/adsdk/ugeno/so/tB$ex;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->setAdapter(Lcom/bytedance/adsdk/ugeno/so/ZYk;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x400

    .line 43
    .line 44
    if-lt p1, v0, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 47
    .line 48
    const/16 v0, 0x200

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(IZ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(IZ)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    if-ltz p1, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lt p1, v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    return-void
.end method

.method public ZYk()Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->oJ()V

    return-object p0
.end method

.method public ZYk(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setIndicatorHeight(I)V

    return-object p0
.end method

.method public ZYk(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn:I

    return-object p0
.end method

.method public ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setIndicatorDirection(Ljava/lang/String;)V

    return-object p0
.end method

.method public ZYk(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->awB:Z

    return-object p0
.end method

.method public ba(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setUnSelectedColor(I)V

    return-object p0
.end method

.method public ba()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ln:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cFZ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 6

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public dLZ(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/ba/ex;->oJ(ZII)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    move v6, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v6, v0

    .line 28
    :goto_0
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v5, v1

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    move v7, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v7, v0

    .line 40
    :goto_1
    move v5, p1

    .line 41
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/adsdk/ugeno/ba/tB;->oJ(ZIIZZ)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->BTZ:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->oJ(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->eZI:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public ex(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setIndicatorY(F)V

    return-object p0
.end method

.method public ex(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex:I

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn()V

    return-object p0
.end method

.method public ex(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setLoop(Z)V

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    if-eq v0, p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/so/tB;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/ex;->oJ(ZII)I

    move-result v0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    .line 9
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/so/ZYk;->tB()V

    .line 11
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/so/tB;->setCurrentItem(I)V

    :cond_0
    return-object p0
.end method

.method public ex()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba()V

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/so/tB;->ZYk(Lcom/bytedance/adsdk/ugeno/so/tB$ex;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->setAdapter(Lcom/bytedance/adsdk/ugeno/so/ZYk;)V

    .line 16
    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 17
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->tB()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/bytedance/adsdk/ugeno/so/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/so/tB;->getAdapter()Lcom/bytedance/adsdk/ugeno/so/ZYk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/so/tB;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewPager()Lcom/bytedance/adsdk/ugeno/so/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 6

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    .line 6
    .line 7
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move v4, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public abstract kkU(I)Landroid/view/View;
.end method

.method public oJ(II)Landroid/view/View;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU(I)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    const-string v1, "two_items_tag"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 44
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 45
    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public oJ(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setIndicatorWidth(I)V

    return-object p0
.end method

.method public oJ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 8
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oq:I

    return-object p0
.end method

.method public oJ(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/adsdk/ugeno/ba/oJ<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->BTZ:Z

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->ZYk()V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/so/ZYk;->tB()V

    .line 55
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->oJ(II)V

    :cond_1
    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 2

    .line 3
    const-string v0, "rectangle"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/bytedance/adsdk/ugeno/ba/oJ/tB;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ/tB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/bytedance/adsdk/ugeno/ba/oJ/ZYk;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ/ZYk;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB:Z

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn()V

    return-object p0
.end method

.method public oJ()Lcom/bytedance/adsdk/ugeno/so/tB;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$tB;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ$tB;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;Landroid/content/Context;)V

    return-object v0
.end method

.method public oJ(IFI)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

    if-eqz v0, :cond_0

    .line 57
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/bytedance/adsdk/ugeno/ba/ex;->oJ(ZII)I

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/bytedance/adsdk/ugeno/ba/tB;->oJ(ZIFI)V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    .line 60
    invoke-direct {p0, p1, p3}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(ILandroid/view/View;)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;IIIZ)V
    .locals 2

    .line 11
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    if-eqz p5, :cond_0

    .line 12
    invoke-virtual {p5}, Lcom/bytedance/adsdk/ugeno/so/ZYk;->tB()V

    .line 13
    :cond_0
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {p5, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->setPageMargin(I)V

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-gtz p3, :cond_1

    if-lez p4, :cond_3

    .line 14
    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oq:I

    if-ne v1, p5, :cond_2

    .line 15
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    add-int/2addr p3, p2

    add-int/2addr p4, p2

    invoke-virtual {v1, v0, p3, v0, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    add-int/2addr p3, p2

    add-int/2addr p4, p2

    invoke-virtual {v1, p3, v0, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Id:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 18
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 19
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 20
    :cond_3
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oq:I

    if-ne p2, p5, :cond_4

    .line 21
    new-instance p2, Lcom/bytedance/adsdk/ugeno/ba/ZYk/ex;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/ba/ZYk/ex;-><init>()V

    .line 22
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/ba/ZYk/ex;->oJ(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {p1, p5, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(ZLcom/bytedance/adsdk/ugeno/so/tB$Pfn;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_1

    .line 25
    :cond_4
    const-string p2, "linear"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/ba/ZYk/tB;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/ba/ZYk/tB;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(ZLcom/bytedance/adsdk/ugeno/so/tB$Pfn;)V

    goto :goto_1

    .line 27
    :cond_5
    const-string p2, "cube"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 28
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/ba/ZYk/oJ;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/ba/ZYk/oJ;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(ZLcom/bytedance/adsdk/ugeno/so/tB$Pfn;)V

    goto :goto_1

    .line 29
    :cond_6
    const-string p2, "fade"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/ba/ZYk/ZYk;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/ba/ZYk/ZYk;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(ZLcom/bytedance/adsdk/ugeno/so/tB$Pfn;)V

    goto :goto_1

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(ZLcom/bytedance/adsdk/ugeno/so/tB$Pfn;)V

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->dLZ:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/so/tB;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/ba/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Xe:Lcom/bytedance/adsdk/ugeno/ba/tB;

    .line 2
    .line 3
    return-void
.end method

.method public setTwoItems(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->si:Z

    .line 2
    .line 3
    return-void
.end method

.method public so(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/adsdk/ugeno/ba/oJ<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public tB(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cY:Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ/oJ;->setIndicatorX(F)V

    return-object p0
.end method

.method public tB(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 2

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba:I

    .line 4
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tb:Landroid/widget/Scroller;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/bytedance/adsdk/ugeno/ba/oJ$ZYk;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB:Landroid/content/Context;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/ba/oJ;->HL:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ$ZYk;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tb:Landroid/widget/Scroller;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tb:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/so/tB;->setScroller(Landroid/widget/Scroller;)V

    return-object p0
.end method

.method public tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 6

    .line 8
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    .line 9
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public tB(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->BTZ:Z

    return-object p0
.end method

.method public tB()V
    .locals 6

    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->kkU:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;IIIZ)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ba/oJ;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(Lcom/bytedance/adsdk/ugeno/so/tB$ex;)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jr:Lcom/bytedance/adsdk/ugeno/ba/oJ$oJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/so/tB;->setAdapter(Lcom/bytedance/adsdk/ugeno/so/ZYk;)V

    .line 15
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    .line 17
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    if-eqz v0, :cond_3

    .line 18
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    add-int/lit16 v0, v0, 0x200

    goto :goto_0

    .line 19
    :cond_3
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Ry:I

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/so/tB;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/adsdk/ugeno/so/tB;->oJ(IZ)V

    .line 21
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->WcQ:Z

    if-nez v1, :cond_4

    .line 22
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->dLZ(I)V

    .line 23
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB:Z

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn()V

    :cond_5
    return-void
.end method
