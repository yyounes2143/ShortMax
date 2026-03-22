.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i5()Lcom/startshorts/androidplayer/manager/immersion/feature/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v3, p1

    .line 3
    const-string v1, "sku"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "priceInfo"

    .line 9
    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->s2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 40
    .line 41
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 42
    .line 43
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 44
    .line 45
    invoke-direct {v5, v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;

    .line 52
    .line 53
    move-object/from16 v7, p2

    .line 54
    .line 55
    move-object/from16 v8, p4

    .line 56
    .line 57
    invoke-direct {v5, v2, p1, v7, v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->X1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lms/i;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 74
    .line 75
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;

    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v8, 0x1

    .line 82
    invoke-direct {v2, v5, v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;-><init>(IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 89
    .line 90
    sget-object v2, Lud/a;->a:Lud/a;

    .line 91
    .line 92
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const/16 v11, 0x1c0

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const-string v2, "limited_time_discount"

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v13, 0x0

    .line 104
    move-object v3, p1

    .line 105
    move-object/from16 v4, p3

    .line 106
    .line 107
    move-object/from16 v5, p2

    .line 108
    .line 109
    move-object v7, v8

    .line 110
    move-object v8, v9

    .line 111
    move-object v9, v10

    .line 112
    move-object v10, v13

    .line 113
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->b4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 17
    .line 18
    const-string v2, "UnlockEpisodeMethodDialog"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 27
    .line 28
    const-string v2, "CoinStoreDialog"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->f2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;-><init>(Landroid/content/Context;III)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->C2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->a4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "mImmersionParams"

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "from"

    .line 37
    .line 38
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "type"

    .line 42
    .line 43
    const-string v2, "limited_time_discount"

    .line 44
    .line 45
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v7, 0x0

    .line 52
    const-string v2, "discount_pop_show"

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
