.class public Lio/bidmachine/BidMachine;
.super Ljava/lang/Object;
.source "BidMachine.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BidMachine"

.field private static final TAG:Ljava/lang/String; = "BidMachine"

.field public static final VERSION:Ljava/lang/String; = "3.4.0"


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

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$setEndpoint$1(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/BidMachine;->lambda$getBidToken$9(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/BidMachine;->lambda$setGPP$7(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$setCoppa$5(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$initialize$0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$getBidToken$8(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$setUSPrivacyString$6(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lio/bidmachine/s2;->f(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Lio/bidmachine/f1;

    invoke-direct {p1, p0}, Lio/bidmachine/f1;-><init>(Ljava/lang/String;)V

    const-string v0, "BidMachine"

    invoke-static {v0, p1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    return-object p0
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdsFormat;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/BidTokenCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    new-instance v0, Lio/bidmachine/k1;

    invoke-direct {v0, p2, p0, p1}, Lio/bidmachine/k1;-><init>(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V

    invoke-static {v0}, Lio/bidmachine/BidTokenTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdsFormat;Lio/bidmachine/BidTokenCallback;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/BidTokenCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V

    return-void
.end method

.method public static getExtrasParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/ExtraParamsManager;->getPublic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$setSubjectToGDPR$4(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachine;->lambda$setTestMode$2(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/InitializationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lio/bidmachine/m1;

    invoke-direct {v0, p1}, Lio/bidmachine/m1;-><init>(Ljava/lang/String;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 3
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/j2;->w(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static synthetic j(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/BidMachine;->lambda$setConsentConfig$3(ZLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getBidToken$8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getBidToken - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$getBidToken$9(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/bidmachine/BidTokenCallback;->onCollected(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$initialize$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "initialize - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$setConsentConfig$3(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "setConsentConfig - %s, %s"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$setCoppa$5(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "setCoppa - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$setEndpoint$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "setEndpoint - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$setGPP$7(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/g;->R(Ljava/util/List;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "setGPP - %s, [%s]"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$setSubjectToGDPR$4(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "setSubjectToGDPR - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$setTestMode$2(Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "setTestMode - %s"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$setUSPrivacyString$6(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "setUSPrivacyString - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 2
    .param p0    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "BidMachine"

    .line 2
    .line 3
    const-string v1, "registerAdRequestListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lio/bidmachine/j2;->L(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with JSON string"

    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lio/bidmachine/NetworkRegistry;->registerNetworks(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/NetworkRegistryCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with JSON string"

    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2}, Lio/bidmachine/NetworkRegistry;->registerNetworks(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V

    return-void
.end method

.method public static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .locals 2
    .param p0    # [Lio/bidmachine/NetworkConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with NetworkConfig array"

    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerNetworks([Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method public static setConsentConfig(ZLjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/h1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/h1;-><init>(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/v5;->r(ZLjava/lang/String;)Lio/bidmachine/v5;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setCoppa(Ljava/lang/Boolean;)V
    .locals 2
    .param p0    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/d1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/d1;-><init>(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lio/bidmachine/v5;->s(Ljava/lang/Boolean;)Lio/bidmachine/v5;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/i1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/i1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->setEndpoint(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static setGPP(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/e1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/e1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/v5;->t(Ljava/lang/String;Ljava/util/List;)Lio/bidmachine/v5;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/Debugger;->isLoggingLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BidMachine"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "setLoggingEnabled skipped"

    .line 10
    .line 11
    invoke-static {v1, p0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Lio/bidmachine/core/a;->j(Z)V

    .line 19
    .line 20
    .line 21
    const-string v0, "setLoggingEnabled - true"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "setLoggingEnabled - false"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lio/bidmachine/core/a;->j(Z)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->setLoggingEnabled(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static setPublisher(Lio/bidmachine/Publisher;)V
    .locals 2
    .param p0    # Lio/bidmachine/Publisher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BidMachine"

    .line 2
    .line 3
    const-string v1, "setPublisher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lio/bidmachine/j2;->N(Lio/bidmachine/Publisher;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static setSubjectToGDPR(Ljava/lang/Boolean;)V
    .locals 2
    .param p0    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/l1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/l1;-><init>(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lio/bidmachine/v5;->u(Ljava/lang/Boolean;)Lio/bidmachine/v5;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 2
    .param p0    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BidMachine"

    .line 2
    .line 3
    const-string v1, "setTargetingParams"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lio/bidmachine/j2;->O(Lio/bidmachine/TargetingParams;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/Debugger;->isTestModeLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BidMachine"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "setTestMode skipped"

    .line 10
    .line 11
    invoke-static {v1, p0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lio/bidmachine/g1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/bidmachine/g1;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lio/bidmachine/j2;->P(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static setUSPrivacyString(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/j1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/j1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachine"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lio/bidmachine/v5;->v(Ljava/lang/String;)Lio/bidmachine/v5;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 2
    .param p0    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "BidMachine"

    .line 2
    .line 3
    const-string v1, "unregisterAdRequestListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lio/bidmachine/j2;->Q(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
