.class Lcom/ss/ttvideoengine/setting/SettingsHelper$1;
.super Lcom/bytedance/vodsetting/NetInterface;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/setting/SettingsHelper;->setContext(Landroid/content/Context;)Lcom/ss/ttvideoengine/setting/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/setting/SettingsHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/vodsetting/NetInterface;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw v1
.end method

.method public start(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/vodsetting/NetInterface$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$300(Lcom/ss/ttvideoengine/setting/SettingsHelper;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "VodSettings"

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "setting query "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 31
    .line 32
    invoke-direct {p2}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    new-instance v0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;

    .line 68
    .line 69
    invoke-direct {v0, p0, p2, p3}, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;-><init>(Lcom/ss/ttvideoengine/setting/SettingsHelper$1;Lcom/ss/ttvideoengine/net/TTVNetClient;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V

    .line 70
    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    invoke-virtual {p2, p1, p3, v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method
