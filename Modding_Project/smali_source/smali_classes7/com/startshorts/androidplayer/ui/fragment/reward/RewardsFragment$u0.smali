.class final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
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

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
    .locals 9
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->v:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    .line 14
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->b1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getAdReward()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskDescription()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 43
    .line 44
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getInterval()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;->a(ZIIIIILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$a;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$b;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->P(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$c;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 104
    .line 105
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "getChildFragmentManager(...)"

    .line 138
    .line 139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 v1, 0x1

    .line 147
    if-ne p1, v1, :cond_4

    .line 148
    .line 149
    move v0, v1

    .line 150
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
