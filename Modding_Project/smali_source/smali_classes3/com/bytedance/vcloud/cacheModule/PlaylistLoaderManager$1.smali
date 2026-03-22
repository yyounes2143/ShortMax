.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;
.super Ljava/lang/Object;
.source "PlaylistLoaderManager.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->preloadSource(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 63
    .line 64
    invoke-interface {v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void

    .line 69
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 63
    .line 64
    invoke-interface {v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void

    .line 69
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 63
    .line 64
    invoke-interface {v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void

    .line 69
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
