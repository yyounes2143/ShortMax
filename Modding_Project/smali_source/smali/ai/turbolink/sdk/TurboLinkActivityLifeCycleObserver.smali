.class public final Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;
.super Ljava/lang/Object;
.source "TurboLinkActivityLifeCycleObserver.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _activitiesStack:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityCount:I

.field private isGotoBackground:Z


# direct methods
.method public constructor <init>(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_activitiesStack:Ljava/util/HashSet;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 15
    .line 16
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 26
    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public final getInstanceEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isCurrentActivityLaunchedFromStack()Z
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_activitiesStack:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onActivityCreated, activity:"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "activity.intent"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->haveAndIsTurboLinkIntentUrl(Landroid/content/Intent;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 42
    .line 43
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3, p2}, Lai/turbolink/sdk/TurboLink;->onIntentRead(Landroid/content/Intent;Z)V

    .line 58
    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lai/turbolink/sdk/TurboLink;->setIntentActivity(Landroid/app/Activity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget-object v1, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 70
    .line 71
    if-eq p2, v1, :cond_1

    .line 72
    .line 73
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->reopen(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onActivityDestroyed, activity:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 35
    .line 36
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-boolean v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getCurrentActivity()Landroid/app/Activity;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->get_currentActivityReference()Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_activitiesStack:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onActivityPaused, activity:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onActivityResumed, activity:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 43
    .line 44
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/TurboLink;->setCurrentActivity(Landroid/app/Activity;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v2, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    sget-object v2, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 59
    .line 60
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SessionObj;->setAndGetSessionId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Lai/turbolink/sdk/TurboLink$SessionObj;->setLastBackgroundTime(J)V

    .line 66
    .line 67
    .line 68
    :cond_1
    sget-object v2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "activity.intent"

    .line 75
    .line 76
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->haveAndIsTurboLinkIntentUrl(Landroid/content/Intent;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getDisableAutoSessionInitialization()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 98
    .line 99
    if-ne v1, v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLinkActivitySession;->isAutoInitialization(Z)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLinkActivitySession;->withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-boolean v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    iput-boolean v7, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 131
    .line 132
    instance-of v0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 133
    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->reopen(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    if-eqz v3, :cond_4

    .line 147
    .line 148
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    iget-boolean v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0, v3}, Lai/turbolink/sdk/TurboLink;->onIntentRead(Landroid/content/Intent;Z)V

    .line 166
    .line 167
    .line 168
    iput-boolean v7, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/TurboLink;->setIntentActivity(Landroid/app/Activity;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->reopen(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 187
    .line 188
    .line 189
    :cond_4
    :goto_0
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 190
    .line 191
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Campaign;->getLaunchCampaignActivity()Ljava/util/HashSet;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Campaign;->getLastNotLaunchCampaignUrl()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-lez v3, :cond_5

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_5

    .line 220
    .line 221
    invoke-virtual {v0, v6}, Lai/turbolink/sdk/TurboLink$Campaign;->setLastNotLaunchCampaignUrl(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Campaign;->getLaunchCampaignDelay()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    sget-object v1, Lai/turbolink/sdk/campaign/CampaignLoadURL;->INSTANCE:Lai/turbolink/sdk/campaign/CampaignLoadURL;

    .line 229
    .line 230
    invoke-virtual {v1, v0, v2, p1}, Lai/turbolink/sdk/campaign/CampaignLoadURL;->openProcess(ILjava/lang/String;Landroid/app/Activity;)V

    .line 231
    .line 232
    .line 233
    :cond_5
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_activitiesStack:Ljava/util/HashSet;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
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
    const-string v0, "outState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "onActivitySaveInstanceState, activity:"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onActivityStarted, activity:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 31
    .line 32
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onActivityStopped, activity:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ",activityCount:"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    if-gtz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sub-int/2addr p1, v0

    .line 44
    :goto_0
    iput p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->activityCount:I

    .line 45
    .line 46
    if-ge p1, v0, :cond_1

    .line 47
    .line 48
    iput-boolean v0, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->isGotoBackground:Z

    .line 49
    .line 50
    sget-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->setLAST_INTENT_VALUE(Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/TurboLink$SessionObj;->setLastBackgroundTime(J)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final setInstanceEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "turboLinkEventCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 7
    .line 8
    return-void
.end method
