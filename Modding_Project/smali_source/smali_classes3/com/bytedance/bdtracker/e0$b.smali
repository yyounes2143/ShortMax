.class public Lcom/bytedance/bdtracker/e0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/e0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/e0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0$b;->a:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$b;->a:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$b;->a:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "oaid"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$b;->a:Lcom/bytedance/bdtracker/e0;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 32
    .line 33
    const/16 v1, 0x11

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
