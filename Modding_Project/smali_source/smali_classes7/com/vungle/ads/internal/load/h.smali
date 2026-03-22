.class public final synthetic Lcom/vungle/ads/internal/load/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic c:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/model/AdPayload;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/load/h;->d:Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/model/AdPayload;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/load/h;->d:Ljava/io/File;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/MraidJsLoader$downloadJs$1$2;->a(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
