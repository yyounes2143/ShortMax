.class final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    const-string v0, "onDialogShowDelegateDismiss"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->o:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getAdReward()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;->a(IIILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->B1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0$a;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 54
    .line 55
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->L(Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0$b;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 72
    .line 73
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 v0, 0x0

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "getChildFragmentManager(...)"

    .line 106
    .line 107
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    const/4 v1, 0x1

    .line 115
    if-ne p1, v1, :cond_3

    .line 116
    .line 117
    move v0, v1

    .line 118
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
