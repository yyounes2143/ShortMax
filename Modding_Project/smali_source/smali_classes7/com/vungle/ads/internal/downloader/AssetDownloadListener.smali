.class public interface abstract Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
.super Ljava/lang/Object;
.source "AssetDownloadListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;,
        Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .param p1    # Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
