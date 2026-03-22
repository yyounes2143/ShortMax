.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;",
        "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->z()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->j0()Landroidx/lifecycle/Lifecycle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p1, v0, v1, p2, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;-><init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->N()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$i;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 41
    .line 42
    return-void
.end method
