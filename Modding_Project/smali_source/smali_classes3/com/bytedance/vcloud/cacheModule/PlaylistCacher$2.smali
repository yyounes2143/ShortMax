.class Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;
.super Landroid/os/Handler;
.source "PlaylistCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->initPreloadCmdHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x2712

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
