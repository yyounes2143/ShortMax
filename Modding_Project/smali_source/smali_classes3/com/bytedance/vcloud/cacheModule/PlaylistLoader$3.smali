.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;
.super Ljava/lang/Object;
.source "PlaylistLoader.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preLoadNextUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getPreloadedSizeFromInfo(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, ","

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    aget-object p1, p1, v0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p1

    .line 23
    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$000()Ljava/lang/String;

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
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$000()Ljava/lang/String;

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
    invoke-direct {p0, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;->getPreloadedSizeFromInfo(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$1100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, p1

    .line 46
    invoke-static {p2, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$1102(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;I)I

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$900(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$000()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->access$1200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    return-void
.end method
