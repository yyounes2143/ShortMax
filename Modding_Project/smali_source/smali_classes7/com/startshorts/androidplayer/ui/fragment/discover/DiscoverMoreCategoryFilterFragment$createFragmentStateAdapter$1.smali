.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DiscoverMoreCategoryFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->M()Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

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
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

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
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->J:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "mModuleInfo"

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v1, v2

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->H(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    const-string v3, "mCategoryVOList"

    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v3, v2

    .line 32
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    const-string v3, "mFrom"

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v2, v3

    .line 53
    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;->a(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

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
