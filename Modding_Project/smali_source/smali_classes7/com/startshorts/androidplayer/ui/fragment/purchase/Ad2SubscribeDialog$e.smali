.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;
.super Lyd/d;
.source "Ad2SubscribeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->N(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    .locals 19

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 29
    .line 30
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 31
    .line 32
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->I()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->u(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_1
    move-object v12, v3

    .line 53
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    const-string v9, "ad_to_subscription"

    .line 58
    .line 59
    invoke-virtual/range {v8 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->V(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->t(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->I()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v16

    .line 78
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 79
    .line 80
    const/16 v17, 0x5f0

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    const-string v5, "ad_to_subscription"

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    const/4 v13, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    move-object v4, v1

    .line 93
    invoke-direct/range {v4 .. v18}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method
