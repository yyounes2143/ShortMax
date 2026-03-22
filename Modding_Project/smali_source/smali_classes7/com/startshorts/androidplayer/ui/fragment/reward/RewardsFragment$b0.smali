.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->u2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n841#2,23:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

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
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->z()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lud/b;->a:Lud/b;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lud/b;->d2(I)Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;

    .line 28
    .line 29
    invoke-direct {v2, v0, v3}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->getDay()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->getCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v0, v3

    .line 48
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->setCount(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->setCount(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {v1, v0, v2}, Lud/b;->q5(ILcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->n()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->getCount()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getConditionValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-lt v0, v1, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/4 v5, 0x4

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    move-object v1, v7

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
