.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $moduleInstance:Lcom/unity3d/services/core/di/UnityAdsModule;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/di/UnityAdsModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;->$moduleInstance:Lcom/unity3d/services/core/di/UnityAdsModule;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;->$moduleInstance:Lcom/unity3d/services/core/di/UnityAdsModule;

    invoke-virtual {v0}, Lcom/unity3d/services/core/di/UnityAdsModule;->sdkMetrics()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$6;->invoke()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object v0

    return-object v0
.end method
