.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;
.super Ljava/lang/Object;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->c0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->f0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
