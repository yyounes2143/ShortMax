.class public Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadUrlInfo"
.end annotation


# instance fields
.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
