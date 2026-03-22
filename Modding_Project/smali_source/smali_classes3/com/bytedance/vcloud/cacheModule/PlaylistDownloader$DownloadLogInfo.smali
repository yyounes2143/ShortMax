.class public Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadLogInfo"
.end annotation


# instance fields
.field public downloadedSize:J

.field public key:Ljava/lang/String;

.field public localFilePath:Ljava/lang/String;

.field public mediaSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->downloadedSize:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->mediaSize:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->key:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->localFilePath:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
