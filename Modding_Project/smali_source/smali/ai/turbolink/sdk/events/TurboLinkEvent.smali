.class public final Lai/turbolink/sdk/events/TurboLinkEvent;
.super Ljava/lang/Object;
.source "TurboLinkEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addtoCartProperties:Lai/turbolink/sdk/request/event/EventAddtoCartProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private customProperties:Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private event:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventType:Lai/turbolink/sdk/request/TurboLinkEventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isNewIntent:Z

.field private linkId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nativeMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/request/TurboLinkEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;

    .line 15
    .line 16
    invoke-direct {v0}, Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->customProperties:Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;

    .line 20
    .line 21
    new-instance v0, Lai/turbolink/sdk/request/event/EventAddtoCartProperties;

    .line 22
    .line 23
    invoke-direct {v0}, Lai/turbolink/sdk/request/event/EventAddtoCartProperties;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->addtoCartProperties:Lai/turbolink/sdk/request/event/EventAddtoCartProperties;

    .line 27
    .line 28
    iput-object p2, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->eventType:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 29
    .line 30
    iput-object p3, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->event:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->activity:Landroid/app/Activity;

    .line 33
    .line 34
    const-string p1, ""

    .line 35
    .line 36
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->userId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->nativeMsg:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final build()V
    .locals 6

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getActivityLifeCycleObserver()Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;->getInstanceEventCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v3}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v4}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v5}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, v2, v3

    .line 5
    iget-object v5, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->event:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, v1}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    :goto_2
    return-void
.end method

.method public final build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 3
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v2, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->userId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lai/turbolink/sdk/TurboLink;->setUserId(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->nativeMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->nativeMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lai/turbolink/sdk/TurboLink$Companion;->setClipboardText(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 14
    :cond_3
    iget-boolean p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->isNewIntent:Z

    if-eqz p1, :cond_4

    sget-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {p1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 15
    :cond_4
    iget-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->eventType:Lai/turbolink/sdk/request/TurboLinkEventType;

    invoke-virtual {p1}, Lai/turbolink/sdk/request/TurboLinkEventType;->getHandler()Lai/turbolink/sdk/events/TurboLinkEventExecute;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Lai/turbolink/sdk/events/TurboLinkEventExecute;->execute(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddtoCartProperties()Lai/turbolink/sdk/request/event/EventAddtoCartProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->addtoCartProperties:Lai/turbolink/sdk/request/event/EventAddtoCartProperties;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCustomProperties()Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->customProperties:Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->event:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLinkId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->linkId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNativeMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->nativeMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAddtoCartProperties(Lai/turbolink/sdk/request/event/EventAddtoCartProperties;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Lai/turbolink/sdk/request/event/EventAddtoCartProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "addtoCartProperties"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->addtoCartProperties:Lai/turbolink/sdk/request/event/EventAddtoCartProperties;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setCustomProperties(Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "customProperties"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->customProperties:Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->isNewIntent:Z

    .line 3
    .line 4
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->haveAndIsTurboLinkIntentUrl(Landroid/content/Intent;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lai/turbolink/sdk/TurboLink;->onIntentRead(Landroid/content/Intent;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object p0
.end method

.method public final setLinkId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "linkId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->linkId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setNativeMsg(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "nativeMsg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->nativeMsg:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->userId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/events/TurboLinkEvent;->callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 7
    .line 8
    return-object p0
.end method
