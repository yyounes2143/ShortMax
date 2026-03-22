.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;
.super Ljava/lang/Object;
.source "DiscoverRankingViewPagerItemAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->W(Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p1, "shorts"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->P()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->M(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v3, "ranking_list_tag"

    .line 34
    .line 35
    move v1, p3

    .line 36
    move-object v2, p2

    .line 37
    invoke-interface/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->c(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
