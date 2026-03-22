.class public final Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;
.super Ljava/lang/Object;
.source "TurboLinkEventCustomExecute.kt"

# interfaces
.implements Lai/turbolink/sdk/events/TurboLinkEventExecute;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;->INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;

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


# virtual methods
.method public execute(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V
    .locals 4
    .param p1    # Lai/turbolink/sdk/TurboLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "turboLink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "turboLinkEvent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lai/turbolink/sdk/events/TurboLinkEventExecute$DefaultImpls;->execute(Lai/turbolink/sdk/events/TurboLinkEventExecute;Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getDisableAutoSessionInitialization()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 27
    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getActivity()Landroid/app/Activity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v0, Lai/turbolink/sdk/request/event/EventCustom;

    .line 42
    .line 43
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getEvent()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCustomProperties()Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {v0, v1, v2, v3, p2}, Lai/turbolink/sdk/request/event/EventCustom;-><init>(Ljava/lang/String;Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
