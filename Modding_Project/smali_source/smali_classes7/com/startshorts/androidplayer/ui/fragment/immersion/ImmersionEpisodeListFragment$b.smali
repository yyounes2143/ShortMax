.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n*L\n1#1,20:1\n127#2,9:21\n177#2,4:30\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$initRecyclerView$1$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$initRecyclerView$1$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 12
    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 21
    .line 22
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 32
    .line 33
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->n0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
