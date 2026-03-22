.class public final Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;
.super Ljava/lang/Object;
.source "InitializationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/beta/InitializationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extras:Ljava/util/Map;
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

.field private logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameID"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->gameID:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->isTestModeEnabled:Z

    .line 19
    .line 20
    sget-object p1, Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/beta/InitializationConfiguration;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/unity3d/ads/beta/InitializationConfiguration;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->gameID:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->isTestModeEnabled:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/beta/InitializationConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/util/Map;Lcom/unity3d/ads/beta/MediationInfo;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "extras"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withLogLevel(Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "logLevel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/services/core/log/DeviceLog$UnityAdsLogLevel;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/beta/MediationInfo;)Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;
    .locals 0
    .param p1    # Lcom/unity3d/ads/beta/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/beta/InitializationConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/beta/MediationInfo;

    .line 2
    .line 3
    return-object p0
.end method
