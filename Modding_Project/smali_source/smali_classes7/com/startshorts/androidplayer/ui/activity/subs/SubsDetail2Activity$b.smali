.class public final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;
.super Ljava/lang/Object;
.source "SubsDetail2Activity.kt"

# interfaces
.implements Lgi/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->G0(Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

.field final synthetic c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->k0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->r0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->m0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getObfuscatedExternalAccountId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getChangeMode()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->a:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getOldToken()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->c:Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->b()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->q0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v17

    .line 101
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->n0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 108
    .line 109
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$b;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 110
    .line 111
    const/16 v19, 0x800

    .line 112
    .line 113
    const/16 v20, 0x0

    .line 114
    .line 115
    const/16 v18, 0x0

    .line 116
    .line 117
    move-object v6, v2

    .line 118
    invoke-direct/range {v6 .. v20}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
