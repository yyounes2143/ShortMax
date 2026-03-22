.class final Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->E(Landroid/content/Context;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel$logout$1"
    f = "SettingsViewModel.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->j:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->j:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->h:I

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
    goto :goto_1

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
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    new-instance v5, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->j0()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v4, 0xa

    .line 47
    .line 48
    const-string v6, "type"

    .line 49
    .line 50
    if-eq v1, v4, :cond_3

    .line 51
    .line 52
    const/16 v4, 0x14

    .line 53
    .line 54
    if-eq v1, v4, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "facebook"

    .line 58
    .line 59
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v1, "google"

    .line 64
    .line 65
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v1, "is_auto"

    .line 69
    .line 70
    const-string v4, "0"

    .line 71
    .line 72
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    const/4 v8, 0x4

    .line 78
    const/4 v9, 0x0

    .line 79
    const-string v4, "log_out"

    .line 80
    .line 81
    const-wide/16 v6, 0x0

    .line 82
    .line 83
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->i:Landroid/content/Context;

    .line 87
    .line 88
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->h:I

    .line 89
    .line 90
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->R0(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_4

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel$logout$1;->j:Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    sget-object p1, Laa/a;->a:Laa/a;

    .line 106
    .line 107
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    sget-object v1, Lng/g;->a:Lng/g;

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Lng/g;->f(Landroid/app/Activity;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/settings/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/settings/b$b;

    .line 131
    .line 132
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->e()V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lng/e;->a:Lng/e;

    .line 141
    .line 142
    invoke-virtual {p1}, Lng/e;->e()V

    .line 143
    .line 144
    .line 145
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p1
.end method
