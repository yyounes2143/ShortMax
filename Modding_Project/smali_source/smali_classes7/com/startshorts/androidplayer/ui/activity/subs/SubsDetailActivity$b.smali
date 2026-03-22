.class public final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;
.super Ljava/lang/Object;
.source "SubsDetailActivity.kt"

# interfaces
.implements Lgi/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->S0(Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;

.field final synthetic c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->F0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 54
    .line 55
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getObfuscatedExternalAccountId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getChangeMode()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getOldToken()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->b()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    const/16 v19, 0xe00

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const-string v7, "subscribe"

    .line 98
    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    move-object v6, v2

    .line 106
    invoke-direct/range {v6 .. v20}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
