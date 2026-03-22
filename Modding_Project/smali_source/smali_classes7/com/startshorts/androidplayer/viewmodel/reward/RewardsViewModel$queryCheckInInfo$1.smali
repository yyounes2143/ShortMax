.class final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->R(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryCheckInInfo$1"
    f = "RewardsViewModel.kt"
    l = {
        0x135
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1\n*L\n314#1:589,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->h:I

    .line 38
    .line 39
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->t(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    move-object v1, p1

    .line 56
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 57
    .line 58
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->c(Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lud/b;->a:Lud/b;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getZoneStr()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v4, v2

    .line 73
    :goto_1
    invoke-virtual {v3, v4}, Lud/b;->r5(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getZoneStr()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_5

    .line 85
    .line 86
    :cond_4
    const-string v4, "UTC+0"

    .line 87
    .line 88
    :cond_5
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->b(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;

    .line 96
    .line 97
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;-><init>(Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;->j:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 112
    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    move-object v2, p1

    .line 116
    check-cast v2, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 117
    .line 118
    :cond_7
    if-nez v2, :cond_8

    .line 119
    .line 120
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "onResponseFailure exception -> "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, ", exception must not be null"

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v1, "ApiBuilder"

    .line 149
    .line 150
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 171
    .line 172
    const-string v0, "check_in"

    .line 173
    .line 174
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p1
.end method
