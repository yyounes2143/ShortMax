.class public Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
.super Landroid/widget/RelativeLayout;
.source "BannerViewPager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;,
        Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Landroidx/viewpager2/widget/ViewPager2;

.field private e:Ldj/a;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;

.field private final i:Ljava/lang/Runnable;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Path;

.field private l:I

.field private m:I

.field private n:Landroidx/lifecycle/Lifecycle;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

.field private final t:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->f:Landroid/os/Handler;

    .line 5
    new-instance p3, Lcj/a;

    invoke-direct {p3, p0}, Lcj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V

    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->i:Ljava/lang/Runnable;

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->o:I

    .line 7
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q:Z

    .line 9
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->r:Z

    .line 10
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$a;

    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$a;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->t:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 11
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private C(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lfj/a;->b(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, p1

    .line 25
    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->s:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;->setRequestDisallowInterceptTouchEventForTrue()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;ZLandroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->s(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;ZLandroid/view/View;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->w(IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->x(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->v(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getInterval()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private h()Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    move-object v2, v1

    .line 19
    :goto_1
    if-eqz v0, :cond_3

    .line 20
    .line 21
    instance-of v3, v0, Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v3, v3, Landroid/view/View;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/View;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    return-object v2
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v1

    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Ldj/a;->c()Ldj/b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ldj/b;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->f:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->i:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getInterval()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    int-to-long v2, v2

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance v0, Ldj/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ldj/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ldj/a;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->o()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setupViewPager(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->n()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->f()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Ldj/a;->h(ZF)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x8

    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, v0}, Ldj/a;->h(ZF)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Ldj/b;->h()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->z(Ldj/b;II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ldj/a;->b()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {p0, v0}, Lej/b;->a(Landroid/view/View;F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/startshorts/androidplayer/R$layout;->bvp_layout:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/startshorts/androidplayer/R$id;->vp_main:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Ldj/a;->d()Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ldj/b;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-le v0, v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1
.end method

.method private r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private synthetic s(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;ZLandroid/view/View;II)V
    .locals 0

    .line 1
    invoke-interface {p1, p3, p4}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;->a(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    invoke-virtual {p1, p5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setupViewPager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ldj/b;->k()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    invoke-virtual {v0}, Ldj/b;->k()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Lej/a;->a(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 28
    .line 29
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Ldj/b;->n()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->k(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Lfj/a;->b(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->t:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->t:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 79
    .line 80
    invoke-virtual {v0}, Ldj/b;->d()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 88
    .line 89
    invoke-virtual {v0}, Ldj/b;->c()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->m()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ldj/b;->g()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->l(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 111
    .line 112
    const-string v0, "You must set adapter for BannerViewPager"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method private t(III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-le p2, p3, :cond_5

    .line 3
    .line 4
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 5
    .line 6
    invoke-virtual {p2}, Ldj/a;->c()Ldj/b;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ldj/b;->n()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 p3, 0x1

    .line 15
    if-nez p2, :cond_4

    .line 16
    .line 17
    sget-object p2, Lfk/v;->a:Lfk/v;

    .line 18
    .line 19
    invoke-virtual {p2}, Lfk/v;->b()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->l:I

    .line 26
    .line 27
    sub-int/2addr p2, p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->l:I

    .line 30
    .line 31
    sub-int p2, p1, p2

    .line 32
    .line 33
    :goto_0
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    if-lez p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->H()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, p3

    .line 59
    if-ne p1, v1, :cond_2

    .line 60
    .line 61
    if-ltz p2, :cond_3

    .line 62
    .line 63
    :cond_2
    move v0, p3

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 69
    .line 70
    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->H()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-le p3, p2, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_1
    return-void
.end method

.method private u(III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-le p3, p2, :cond_4

    .line 3
    .line 4
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 5
    .line 6
    invoke-virtual {p2}, Ldj/a;->c()Ldj/b;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ldj/b;->n()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 p3, 0x1

    .line 15
    if-nez p2, :cond_3

    .line 16
    .line 17
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->m:I

    .line 22
    .line 23
    sub-int v1, p1, v1

    .line 24
    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->H()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sub-int/2addr v1, p3

    .line 47
    if-ne p2, v1, :cond_1

    .line 48
    .line 49
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->m:I

    .line 50
    .line 51
    sub-int/2addr p1, p2

    .line 52
    if-ltz p1, :cond_2

    .line 53
    .line 54
    :cond_1
    move v0, p3

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 60
    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->H()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    if-le p2, p3, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_0
    return-void
.end method

.method private v(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u:Z

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u:Z

    .line 11
    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->h:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;->b(I)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method private w(IFI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 8
    .line 9
    invoke-virtual {p3}, Ldj/a;->c()Ldj/b;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3}, Ldj/b;->n()Z

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lfj/a;->c(II)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private x(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ldj/a;->c()Ldj/b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ldj/b;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, v0}, Lfj/a;->c(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/16 v0, 0x3e7

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->C(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->h:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u:Z

    .line 41
    .line 42
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;->a(ZII)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->n:Landroidx/lifecycle/Lifecycle;

    .line 5
    .line 6
    return-object p0
.end method

.method public B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;",
            ")",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->h:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
            "TT;>;)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->q(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Ldj/a;->c()Ldj/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Ldj/b;->r(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p0
.end method

.method public F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->r(Z)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Ldj/a;->c()Ldj/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ldj/b;->q(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0
.end method

.method public G(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->s(I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public I(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->u(I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;",
            ")",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->K(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public K(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;",
            "Z)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/banner/a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/a;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->m(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public L(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->v(I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldj/a;->i(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public N(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const v0, 0x3f59999a    # 0.85f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->y(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ldj/a;->c()Ldj/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Ldj/b;->x(F)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Ldj/b;->A(Z)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ldj/b;->z(I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 11
    .line 12
    invoke-virtual {p2}, Ldj/a;->c()Ldj/b;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Ldj/b;->t(I)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public R(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->B(I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public S(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ldj/b;->C(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public T()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->n:Landroidx/lifecycle/Lifecycle;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 37
    .line 38
    if-eq v0, v2, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->n:Landroidx/lifecycle/Lifecycle;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 47
    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->f:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->i:Ljava/lang/Runnable;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getInterval()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    int-to-long v3, v3

    .line 59
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->f:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->i:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldj/b;->j()[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->j:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->k:Landroid/graphics/Path;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->j:Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 36
    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->k:Landroid/graphics/Path;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->j:Landroid/graphics/RectF;

    .line 40
    .line 41
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->k:Landroid/graphics/Path;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->c:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public f(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ldj/a;->a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->l(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->k()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string v0, "You must set adapter for BannerViewPager"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public getAdapter()Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->h()Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->s:Lcom/startshorts/androidplayer/utils/scroll/NestedScrollableHost;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-gt v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    if-eq v0, v1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    float-to-int v2, v2

    .line 50
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->l:I

    .line 51
    .line 52
    sub-int v3, v0, v3

    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->m:I

    .line 59
    .line 60
    sub-int v4, v2, v4

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 67
    .line 68
    invoke-virtual {v5}, Ldj/a;->c()Ldj/b;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ldj/b;->d()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-ne v5, v1, :cond_2

    .line 77
    .line 78
    invoke-direct {p0, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u(III)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    if-nez v5, :cond_5

    .line 83
    .line 84
    invoke-direct {p0, v0, v3, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->t(III)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    float-to-int v0, v0

    .line 102
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->l:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    float-to-int v0, v0

    .line 109
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->m:I

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 116
    .line 117
    invoke-virtual {v2}, Ldj/a;->c()Ldj/b;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ldj/b;->o()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    xor-int/2addr v1, v2

    .line 126
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1

    .line 134
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    return p1
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "SUPER_STATE"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "CURRENT_POSITION"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 19
    .line 20
    const-string v0, "IS_CUSTOM_INDICATOR"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->b:Z

    .line 27
    .line 28
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "SUPER_STATE"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "CURRENT_POSITION"

    .line 16
    .line 17
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->a:I

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "IS_CUSTOM_INDICATOR"

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->b:Z

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    move-result v1

    invoke-static {v0, v1}, Lfj/a;->c(II)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 2

    .line 10
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->u:Z

    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->U()V

    .line 13
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p3

    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    move-result v0

    invoke-static {p3, v0}, Lfj/a;->c(II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p1, v0

    add-int/2addr p3, p1

    invoke-virtual {v1, p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->T()V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public setResetCurrentItemWhenCanLoop(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->q:Z

    .line 6
    .line 7
    return-void
.end method

.method public y(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->e:Ldj/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldj/a;->c()Ldj/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->z(Ldj/b;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public z(Ldj/b;II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->o:I

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p:I

    .line 6
    .line 7
    if-eq p3, v0, :cond_5

    .line 8
    .line 9
    :cond_0
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->o:I

    .line 10
    .line 11
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->p:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {p1}, Ldj/b;->d()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1}, Ldj/b;->e()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/2addr v3, p2

    .line 31
    invoke-virtual {p1}, Ldj/b;->e()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, p3

    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    move v3, v1

    .line 39
    :cond_1
    if-gez p1, :cond_2

    .line 40
    .line 41
    move p1, v1

    .line 42
    :cond_2
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v3, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p2, 0x1

    .line 49
    if-ne v2, p2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->r:Z

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->r:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-void
.end method
