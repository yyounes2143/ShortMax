.class Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/ZYk$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ba;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Z

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ZYk:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->tB:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ZYk:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->tB:J

    sub-long/2addr v0, v2

    .line 6
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;J)V

    const-string v0, "start_activity_action"

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/ba;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ba;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "playable tool error open"

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;->ZYk:Z

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ba$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ba$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_2
    return-void
.end method
