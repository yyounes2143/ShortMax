.class Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Id$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->ex(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

.field final synthetic tB:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->tB:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 10

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/awB;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v3, p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;->oJ()Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    :goto_0
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->tB:J

    sub-long/2addr v0, v4

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p2

    invoke-static {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;J)V

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->si()I

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/awB;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/so;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/PiB;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/PiB;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/awB;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/PiB$7;->oJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz p1, :cond_4

    const/4 v0, -0x3

    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 16
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    :cond_4
    return-void
.end method
