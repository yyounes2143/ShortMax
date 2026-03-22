.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ImmersionEpisodeListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->Y(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic j:I

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
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Ljava/util/List;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->i:Ljava/util/List;

    .line 2
    .line 3
    iput p3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->j:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->k:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->k:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListFragment"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 19
    .line 20
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;

    .line 21
    .line 22
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->j:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    const/16 v3, 0x19

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;->a(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;III)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->i:Ljava/util/List;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;->k:Ljava/util/List;

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
