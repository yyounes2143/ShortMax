.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverRankingViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->I()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;-><init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->W(Landroidx/lifecycle/Lifecycle;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 42
    .line 43
    :cond_0
    return-void
.end method
