.class public final Lcom/unity3d/ads/core/data/manager/AndroidSDKPropertiesManager;
.super Ljava/lang/Object;
.source "AndroidSDKPropertiesManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


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


# virtual methods
.method public getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getCurrentInitializationState()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setInitializationTime()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getElapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTime(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInitializationTimeSinceEpoch()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTimeSinceEpoch(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initializeState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitialized(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
