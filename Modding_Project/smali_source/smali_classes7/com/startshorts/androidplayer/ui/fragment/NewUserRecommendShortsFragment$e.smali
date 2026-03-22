.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;
.super Lyd/d;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->e:Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 12

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->e:Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->getPurchasedSku()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v11, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->e:Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 36
    .line 37
    const/16 v9, 0xf8

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v0, v11

    .line 46
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v11}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->b0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->f:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;->e:Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->F(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
