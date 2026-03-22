.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;
.super Lyd/d;
.source "Ad2CoinsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->I(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    const-wide/16 p1, 0x5dc

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lyd/d;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 22
    .line 23
    move-object v6, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v6, v3

    .line 26
    :goto_0
    if-eqz v6, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 29
    .line 30
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->C()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->B()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->r(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 49
    .line 50
    const/16 v13, 0x30

    .line 51
    .line 52
    const/4 v14, 0x0

    .line 53
    const-string v5, "ad_to_purchase"

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    move-object v4, v15

    .line 58
    invoke-direct/range {v4 .. v14}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v15}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 62
    .line 63
    .line 64
    sget-object v16, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->C()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v18

    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->B()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    .line 73
    move-result-object v19

    .line 74
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->D()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_1
    move-object/from16 v20, v3

    .line 85
    .line 86
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->r(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    const-string v17, "ad_to_purchase"

    .line 91
    .line 92
    invoke-virtual/range {v16 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->V(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method
