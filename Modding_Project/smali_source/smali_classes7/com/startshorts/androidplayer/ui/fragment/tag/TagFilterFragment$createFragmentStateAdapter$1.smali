.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "TagFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->R()Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->L:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->O(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->N(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string v3, "mShortLabel"

    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v3, v4

    .line 30
    :cond_0
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 31
    .line 32
    invoke-static {v5}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->getId()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    const-string v5, "mFrom"

    .line 55
    .line 56
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v5, v4

    .line 60
    :cond_1
    move v4, p1

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;->a(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;ILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
