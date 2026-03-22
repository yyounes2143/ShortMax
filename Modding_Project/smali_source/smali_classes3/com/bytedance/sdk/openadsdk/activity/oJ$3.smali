.class Lcom/bytedance/sdk/openadsdk/activity/oJ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/oJ;->NO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    const/4 v2, 0x0

    .line 33
    aput v1, v0, v2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    const/4 v2, 0x1

    .line 54
    aput v1, v0, v2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/oJ;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(I)[F

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 76
    .line 77
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 78
    .line 79
    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ([FLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
