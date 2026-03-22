.class Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

.field final synthetic oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->oJ:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->oJ:Z

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn$6;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method
