.class public interface abstract Lcom/vungle/ads/internal/executor/Executors;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getApiExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDownloaderExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLoggerExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOffloadExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUaExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
