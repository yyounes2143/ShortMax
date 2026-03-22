.class Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;

.field final synthetic oJ:J


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;->oJ:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Lcom/bytedance/sdk/component/utils/IUZ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;->ZYk:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Lcom/bytedance/sdk/component/utils/IUZ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;->oJ:J

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x6a

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
