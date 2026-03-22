.class public final Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "AppLifecycleInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->c:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->n(ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->o()Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->p()Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method

.method private final n(ZLrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lkf/b;->a:Lkf/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Lkf/b;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->F()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v4, Lud/a;->a:Lud/a;

    .line 25
    .line 26
    invoke-virtual {v4}, Lud/a;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sget-object v5, Lmk/c;->a:Lmk/c;

    .line 31
    .line 32
    invoke-virtual {v5}, Lmk/c;->c()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sget-object v6, Lfk/a;->a:Lfk/a;

    .line 37
    .line 38
    invoke-virtual {v6}, Lfk/a;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v8, "onForeground -> isAdShowing("

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v8, ") jumpToAdDetail("

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v8, ") requestPermissionFromSettings("

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v8, ") routingActivityExist("

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v8, ") existNotificationActivity("

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v8, 0x29

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {p0, v7}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-nez v1, :cond_1

    .line 100
    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    if-nez v6, :cond_1

    .line 104
    .line 105
    if-nez v3, :cond_1

    .line 106
    .line 107
    if-nez v0, :cond_1

    .line 108
    .line 109
    if-nez v5, :cond_1

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$checkEnableShowImmersionActivity$2;

    .line 118
    .line 119
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$checkEnableShowImmersionActivity$2;-><init>(Lrs/c;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v0, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-ne p1, p2, :cond_0

    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$checkEnableShowImmersionActivity$3;

    .line 141
    .line 142
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$checkEnableShowImmersionActivity$3;-><init>(Lrs/c;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v0, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-ne p1, p2, :cond_2

    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p1
.end method

.method private final o()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "doWorkOnBackground"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private final p()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "doWorkOnForeground"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private final q()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Laa/a;->a:Laa/a;

    .line 20
    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$b;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$b;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Laa/a;->b(Laa/b;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AppLifecycleInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/startup/DbInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "initProcessLifecycleOwner exception -> "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object p2, Lfk/v;->a:Lfk/v;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "getApplicationContext(...)"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2, p1, v0}, Lfk/v;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method
