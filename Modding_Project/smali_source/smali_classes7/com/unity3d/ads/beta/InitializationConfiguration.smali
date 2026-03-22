.class public final Lcom/unity3d/ads/beta/InitializationConfiguration;
.super Ljava/lang/Object;
.source "InitializationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gameID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isTestModeEnabled:Z

.field private final logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/util/Map;Lcom/unity3d/ads/beta/MediationInfo;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/beta/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity3d/ads/beta/MediationInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->gameID:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->isTestModeEnabled:Z

    .line 5
    iput-object p4, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 6
    iput-object p5, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->extras:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/util/Map;Lcom/unity3d/ads/beta/MediationInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 8
    sget-object p4, Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 9
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    move-result-object p5

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p6, 0x0

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/beta/InitializationConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/util/Map;Lcom/unity3d/ads/beta/MediationInfo;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->extras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->gameID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogLevel()Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/beta/MediationInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTestModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/ads/beta/InitializationConfiguration;->isTestModeEnabled:Z

    .line 2
    .line 3
    return v0
.end method
