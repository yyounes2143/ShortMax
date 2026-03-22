.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bbM()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v1, 0x320

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(II)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
