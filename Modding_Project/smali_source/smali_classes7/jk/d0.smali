.class public final Ljk/d0;
.super Ljava/lang/Object;
.source "ViewPager2Ext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljk/d0;->c(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 3
    .param p0    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    if-ltz p1, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lt p1, v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v0, v2

    .line 36
    :goto_0
    if-nez v0, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljk/c0;

    .line 62
    .line 63
    invoke-direct {v0, p0, p1}, Ljk/c0;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private static final c(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
