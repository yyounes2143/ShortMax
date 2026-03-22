.class public interface abstract Lcom/vungle/ads/internal/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/Downloader$NetworkType;,
        Lcom/vungle/ads/internal/downloader/Downloader$RequestException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .param p1    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract cancelAll()V
.end method

.method public abstract download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .param p1    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
