.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ContainerRecentlyWatchedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->V()Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->k:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->k:Ljava/util/List;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->j:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$createFragmentStateAdapter$2;->k:Ljava/util/List;

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
