.class public final Lai/turbolink/sdk/TurboLink$DefaultEvent;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$DefaultEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$DefaultEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$DefaultEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$DefaultEvent;->INSTANCE:Lai/turbolink/sdk/TurboLink$DefaultEvent;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addtoCart(Landroid/app/Activity;Lai/turbolink/sdk/request/event/EventAddtoCartProperties;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lai/turbolink/sdk/request/event/EventAddtoCartProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "addtoCartProperties"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 14
    .line 15
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->ADDTOCART:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 16
    .line 17
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->setAddtoCartProperties(Lai/turbolink/sdk/request/event/EventAddtoCartProperties;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final click(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "linkId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 14
    .line 15
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CLICK:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 16
    .line 17
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->setLinkId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final codeSearch(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->isBelongTurboLink(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink;->access$setClipboardText$cp(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p1, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 23
    .line 24
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 25
    .line 26
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 27
    .line 28
    invoke-virtual {v1}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p1, p0, v0, v1}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public static final install(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 7
    .line 8
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 9
    .line 10
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 11
    .line 12
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final login(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 9
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    sget-object v3, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->LOGIN:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    invoke-virtual {v3}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setLoginEventStatus(I)V

    .line 8
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    const/4 p0, 0x0

    new-array v7, p0, [Ljava/lang/String;

    const-string v8, ""

    const-string v5, ""

    const-string v6, ""

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->setUserId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 9
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inviteCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    sget-object v3, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->LOGIN:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    invoke-virtual {v3}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setLoginEventStatus(I)V

    .line 3
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->setUserId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic login$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v3, p2

    .line 10
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v4, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p6, 0x10

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    new-array p4, p2, [Ljava/lang/String;

    .line 23
    .line 24
    :cond_2
    move-object v5, p4

    .line 25
    and-int/lit8 p2, p6, 0x20

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    move-object v6, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move-object v6, p5

    .line 32
    :goto_2
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static final logout(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setLogoutEventStatus(I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 13
    .line 14
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->userLogout()V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 24
    .line 25
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 26
    .line 27
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 28
    .line 29
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static final open(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 7
    .line 8
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 9
    .line 10
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 11
    .line 12
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 9
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "nickName"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "avatar"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "tags"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "inviteCode"

    .line 27
    .line 28
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 38
    .line 39
    sget-object v3, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->REGISTER:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 40
    .line 41
    invoke-virtual {v3}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setRegisterEventStatus(I)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 57
    .line 58
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 59
    .line 60
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 61
    .line 62
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    move-object v5, p2

    .line 73
    move-object v6, p3

    .line 74
    move-object v7, p4

    .line 75
    move-object v8, p5

    .line 76
    invoke-virtual/range {v3 .. v8}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->setUserId(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static synthetic register$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    :cond_0
    and-int/lit8 p7, p6, 0x4

    .line 9
    .line 10
    if-eqz p7, :cond_1

    .line 11
    .line 12
    move-object p2, v0

    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x8

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    move-object p3, v0

    .line 18
    :cond_2
    and-int/lit8 p7, p6, 0x10

    .line 19
    .line 20
    if-eqz p7, :cond_3

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    new-array p4, p4, [Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x20

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    move-object p5, v0

    .line 30
    :cond_4
    invoke-static/range {p0 .. p5}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final reopen(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 7
    .line 8
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 9
    .line 10
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 11
    .line 12
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p0, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final loadurl(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 7
    .line 8
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 9
    .line 10
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOADURL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 11
    .line 12
    invoke-virtual {v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, p1, v1, v2}, Lai/turbolink/sdk/events/TurboLinkEvent;-><init>(Landroid/app/Activity;Lai/turbolink/sdk/request/TurboLinkEventType;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
