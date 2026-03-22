.class final Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->H(Landroid/content/Context;Z)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel$updateAutoUnlockEpisode$1"
    f = "SettingsViewModel.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Z

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->j:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->k:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->j:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->k:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;-><init>(Landroid/content/Context;ZLcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->j:Z

    .line 38
    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o1(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->k:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$updateAutoUnlockEpisode$1;->j:Z

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 59
    .line 60
    new-instance v4, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p1, "from"

    .line 66
    .line 67
    const-string v3, "setting_click"

    .line 68
    .line 69
    invoke-virtual {v4, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const-string p1, "agree"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string p1, "cancel"

    .line 78
    .line 79
    :goto_1
    const-string v3, "status"

    .line 80
    .line 81
    invoke-virtual {v4, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v7, 0x4

    .line 87
    const/4 v8, 0x0

    .line 88
    const-string v3, "auto_unlock"

    .line 89
    .line 90
    const-wide/16 v5, 0x0

    .line 91
    .line 92
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/settings/b$d;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/b$d;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p1
.end method
