.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;
.super Ljava/lang/Object;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mDiscoverListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,660:1\n360#2,7:661\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mDiscoverListener$1\n*L\n253#1:661,7\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move v2, v1

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, -0x1

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isTabRanking()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v2, v4

    .line 65
    :goto_2
    if-eq v2, v4, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->g1(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :cond_4
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h1(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_3
    return-void
.end method

.method public b(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->b:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    cmpg-float v0, p2, p1

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [F

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput p2, v1, v2

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    aput p1, v1, p2

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->b:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public c(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->b:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    div-float/2addr p1, v2

    .line 35
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    cmpg-float v0, p2, p1

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x2

    .line 55
    new-array v1, v1, [F

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    aput p2, v1, v2

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    aput p1, v1, p2

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    int-to-float p2, p2

    .line 83
    div-float/2addr p1, p2

    .line 84
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 93
    .line 94
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->b:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->U()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->h()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->W()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->E0()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->l()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method
