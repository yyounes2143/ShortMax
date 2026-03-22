.class public Lcom/google/ads/mediation/inmobi/InMobiInitializer;
.super Ljava/lang/Object;
.source "InMobiInitializer.java"

# interfaces
.implements Lcom/inmobi/sdk/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;,
        Lcom/google/ads/mediation/inmobi/InMobiInitializer$InitializationStatus;
    }
.end annotation


# static fields
.field public static final INITIALIZED:I = 0x2

.field public static final INITIALIZING:I = 0x1

.field public static final UNINITIALIZED:I

.field private static instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;


# instance fields
.field private final inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

.field initializationStatus:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final listeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 4
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 8
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    return-void
.end method

.method public static getInstance()Lcom/google/ads/mediation/inmobi/InMobiInitializer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiInitializer;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->instance:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x20L
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-interface {p3}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeSuccess()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget p3, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p3, v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 22
    .line 23
    iget-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->inMobiSdkWrapper:Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiConsent;->getConsentObj()Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p3, p1, p2, v0, p0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->init(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onInitializationComplete(Ljava/lang/Error;)V
    .locals 2
    .param p1    # Ljava/lang/Error;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "InMobi SDK initialized."

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeSuccess()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->initializationStatus:I

    .line 37
    .line 38
    const/16 v0, 0x65

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;

    .line 65
    .line 66
    invoke-interface {v1, p1}, Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiInitializer;->listeners:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
