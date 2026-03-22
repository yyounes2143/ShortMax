.class public final Lai/turbolink/sdk/TurboLinkActivitySession;
.super Ljava/lang/Object;
.source "TurboLinkActivitySession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private event:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAutoInitialization:Z

.field private uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "auto"

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->event:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v1

    .line 25
    :goto_0
    if-eqz v2, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v2, v1

    .line 41
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x2

    .line 47
    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    :cond_2
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink;->setCurrentActivity(Landroid/app/Activity;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public static final synthetic access$getEvent$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->event:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isAutoInitialization$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->isAutoInitialization:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final isAutoInitialization(Z)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->isAutoInitialization:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final sessionInit()V
    .locals 13

    .line 1
    const-string v0, "Beginning session initialization"

    .line 2
    .line 3
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Session uri is "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->uri:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 29
    .line 30
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    const-string v0, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 37
    .line 38
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->always(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    sget-object v1, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 43
    .line 44
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setAndGetSessionId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->INITIALISING:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Lai/turbolink/sdk/TurboLink;->setSessionInitState(Lai/turbolink/sdk/TurboLink$SESSION_STATE;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink;->getActivityLifeCycleObserver()Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->getInstanceEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    :goto_0
    iput-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 74
    .line 75
    :cond_2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v5, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 87
    .line 88
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getAppPrefHelper()Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper;->isAppNewInstall()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v1, 0x1

    .line 105
    if-ne v0, v1, :cond_3

    .line 106
    .line 107
    sget-object v0, Lai/turbolink/sdk/coroutines/InstallReferrers;->INSTANCE:Lai/turbolink/sdk/coroutines/InstallReferrers;

    .line 108
    .line 109
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Landroid/content/Context;

    .line 112
    .line 113
    sget-object v3, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;->INSTANCE:Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v3}, Lai/turbolink/sdk/coroutines/InstallReferrers;->googleInstallReferrer(Landroid/content/Context;Lat/p;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v10, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v1, v10

    .line 130
    move-object v3, p0

    .line 131
    invoke-direct/range {v1 .. v7}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/TurboLinkActivitySession;Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Lai/turbolink/sdk/TurboLink;Lrs/c;)V

    .line 132
    .line 133
    .line 134
    const/4 v11, 0x3

    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    move-object v7, v0

    .line 139
    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 0
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final withEvent(Ljava/lang/String;)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->event:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withUriData(Landroid/net/Uri;)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    return-object p0
.end method
