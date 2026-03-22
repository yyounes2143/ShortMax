.class public final Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;
.super Ljava/lang/Object;
.source "LoginGuideDialogProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    const/4 v2, 0x0

    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    sget-object p3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_4
    sget-object p3, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->w()Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_5

    .line 85
    .line 86
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5
    sget-object p3, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 92
    .line 93
    new-instance v4, Ljava/util/Date;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v4}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p3, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    sget-object v4, Lud/b;->a:Lud/b;

    .line 107
    .line 108
    invoke-virtual {v4, p3}, Lud/b;->H1(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    invoke-virtual {v4, p3, v2}, Lud/b;->U4(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$2;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-direct {v2, p1, p0, p2, v4}, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 125
    .line 126
    .line 127
    iput v3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor$process$1;->j:I

    .line 128
    .line 129
    invoke-static {p3, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v1, :cond_7

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_6
    move v3, v2

    .line 137
    :cond_7
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method public c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "LoginGuideDialogProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_LOGIN_GUIDE:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
