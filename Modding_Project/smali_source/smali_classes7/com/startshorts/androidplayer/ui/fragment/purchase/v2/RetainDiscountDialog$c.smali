.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;
.super Lyd/d;
.source "RetainDiscountDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 20

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->U()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v15

    .line 24
    new-instance v14, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->T()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    const/16 v1, 0x9f8

    .line 39
    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    const-string v13, "coupon_popup_window"

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    move-object v2, v14

    .line 53
    move-object/from16 v18, v14

    .line 54
    .line 55
    move-object/from16 v14, v17

    .line 56
    .line 57
    move-object/from16 v19, v15

    .line 58
    .line 59
    move v15, v1

    .line 60
    invoke-direct/range {v2 .. v16}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    move-object/from16 v2, v18

    .line 64
    .line 65
    move-object/from16 v1, v19

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 71
    .line 72
    new-instance v5, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->T()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v4, "from"

    .line 84
    .line 85
    invoke-virtual {v5, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->U()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    .line 100
    :goto_0
    const-string v2, "sku_id"

    .line 101
    .line 102
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "popup_name"

    .line 106
    .line 107
    const-string v2, "coupon_pop_up_window"

    .line 108
    .line 109
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "popup_type"

    .line 113
    .line 114
    const-string v2, "modal"

    .line 115
    .line 116
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "click_target"

    .line 120
    .line 121
    const-string v2, "confirm_btn"

    .line 122
    .line 123
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    const/4 v8, 0x4

    .line 129
    const/4 v9, 0x0

    .line 130
    const-string v4, "popup_click"

    .line 131
    .line 132
    const-wide/16 v6, 0x0

    .line 133
    .line 134
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
