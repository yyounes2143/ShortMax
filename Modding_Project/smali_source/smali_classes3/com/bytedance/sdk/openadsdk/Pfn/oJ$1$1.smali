.class Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->WcQ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->HL()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

    .line 18
    .line 19
    const-string v1, "Blind mode does not allow requesting ads"

    .line 20
    .line 21
    const/16 v2, -0x12

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;->onError(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

    .line 43
    .line 44
    const-string v1, "adslot is null"

    .line 45
    .line 46
    const/4 v2, -0x4

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;->onError(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const/4 v1, 0x3

    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->ZYk:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->oJ:Lcom/bytedance/sdk/openadsdk/oJ/ex/oJ;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1$1;->tB:Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;->oJ(Lcom/bytedance/sdk/openadsdk/Pfn/oJ$1;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/ba;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_0
    const-string v1, "ADNFactory"

    .line 78
    .line 79
    const-string v2, "open component maybe not exist, please check"

    .line 80
    .line 81
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
