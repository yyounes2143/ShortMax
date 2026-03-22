.class Lcom/bytedance/sdk/openadsdk/component/reward/so$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/ZYk$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/so;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:J

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/component/reward/so;

.field final synthetic oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/so;ZJLcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/so;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->oJ:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->ZYk:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->oJ:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->ZYk:J

    sub-long/2addr v0, v2

    .line 4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so$2;J)V

    const-string v0, "start_activity_action"

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "activity start  fail "

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/so$2;->oJ:Z

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/so$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/so$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_0
    return-void
.end method
