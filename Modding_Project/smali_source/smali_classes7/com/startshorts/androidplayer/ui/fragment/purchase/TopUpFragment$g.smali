.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;
.super Ljava/lang/Object;
.source "TopUpFragment.kt"

# interfaces
.implements Lgi/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->A1(Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

.field final synthetic c:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->c:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getOldToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 16
    .line 17
    sget v2, Lcom/startshorts/androidplayer/R$string;->billing_unavailable_tip_dialog_content:I

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v1, v2, v5, v3, v4}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v13, Lzc/k;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getOldToken()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    :cond_1
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getSubscriptionReplacementMode()Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v13, v1, v2}, Lzc/k;-><init>(Ljava/lang/String;Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 54
    .line 55
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->c:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getObfuscatedExternalAccountId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getChangeMode()I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getOldToken()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->c:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->b()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 98
    .line 99
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    const/16 v19, 0xc00

    .line 104
    .line 105
    const/16 v20, 0x0

    .line 106
    .line 107
    const/4 v10, 0x0

    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    move-object v6, v2

    .line 113
    invoke-direct/range {v6 .. v20}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
