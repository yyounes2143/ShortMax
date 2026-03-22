.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->A1(Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n800#2,9:21\n835#2,4:30\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v1, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->c()Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getSubscriptionReplacementMode()Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v4, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->NULL:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    const/16 v16, 0xdf8

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    move-object v2, v15

    .line 73
    move-object/from16 v18, v15

    .line 74
    .line 75
    move/from16 v15, v16

    .line 76
    .line 77
    move-object/from16 v16, v17

    .line 78
    .line 79
    invoke-direct/range {v2 .. v16}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v2, v18

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->b()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    new-instance v8, Lgi/e;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;->c()Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;

    .line 111
    .line 112
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 113
    .line 114
    iget-object v9, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 115
    .line 116
    invoke-direct {v7, v1, v2, v9}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$g;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V

    .line 117
    .line 118
    .line 119
    move-object v2, v8

    .line 120
    invoke-direct/range {v2 .. v7}, Lgi/e;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lgi/e$b;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Lfi/a;->show()V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
