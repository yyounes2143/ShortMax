.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;
.super Lyd/d;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 31
    .line 32
    const/16 v16, 0xff8

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    move-object v2, v15

    .line 46
    move-object/from16 v18, v15

    .line 47
    .line 48
    move/from16 v15, v16

    .line 49
    .line 50
    move-object/from16 v16, v17

    .line 51
    .line 52
    invoke-direct/range {v2 .. v16}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    move-object/from16 v2, v18

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->b0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->F(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
