.class Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->downloadNextUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "<"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ">sub m3u8 canceled fileKey:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "<"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ">sub m3u8 completed info.logInfo:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->key:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 48
    .line 49
    invoke-static {v0, p1, v1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1100(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "<"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ">sub m3u8 error code : "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " info.loginfo :"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onProgress(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 3

    .line 1
    iget-object p1, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1300(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-wide v0, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->downloadedSize:J

    .line 16
    .line 17
    long-to-float v0, v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1400(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    mul-float/2addr v0, v1

    .line 25
    iget-wide v1, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->mediaSize:J

    .line 26
    .line 27
    long-to-float p1, v1

    .line 28
    div-float/2addr v0, p1

    .line 29
    add-float/2addr p2, v0

    .line 30
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->access$1500(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;F)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    return-void
.end method
