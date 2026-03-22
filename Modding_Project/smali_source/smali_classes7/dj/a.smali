.class public Ldj/a;
.super Ljava/lang/Object;
.source "BannerManager.java"


# instance fields
.field private a:Ldj/b;

.field private final b:Landroidx/viewpager2/widget/CompositePageTransformer;

.field private c:Landroidx/viewpager2/widget/MarginPageTransformer;

.field private d:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldj/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ldj/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 10
    .line 11
    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldj/a;->g()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 5
    .line 6
    iget-object v1, p0, Ldj/a;->a:Ldj/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Ldj/b;->e()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ldj/a;->c:Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 16
    .line 17
    iget-object v1, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c()Ldj/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ldj/b;

    .line 6
    .line 7
    invoke-direct {v0}, Ldj/b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 13
    .line 14
    return-object v0
.end method

.method public d()Landroidx/viewpager2/widget/CompositePageTransformer;
    .locals 1

    .line 1
    iget-object v0, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldj/a;->d:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldj/a;->c:Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public h(ZF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldj/a;->f()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;

    .line 7
    .line 8
    iget-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ldj/b;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v0, p1

    .line 19
    move v2, p2

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;-><init>(IFFFF)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ldj/a;->d:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/banner/transform/ScaleInTransformer;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/transform/ScaleInTransformer;-><init>(F)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ldj/a;->d:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Ldj/a;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 34
    .line 35
    iget-object p2, p0, Ldj/a;->d:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldj/a;->a:Ldj/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldj/b;->w(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
