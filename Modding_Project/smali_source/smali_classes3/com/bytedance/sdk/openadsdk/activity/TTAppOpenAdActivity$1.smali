.class Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;
.super Lcom/bytedance/sdk/openadsdk/component/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ZYk()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Z)Z

    .line 10
    const-string v0, "splash_auto_close_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cFZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public ZYk(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError() called with: totalPlayTime = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], percent = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->oJ(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    return-void
.end method

.method public ZYk(Landroid/view/View;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB()V

    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    return-void
.end method

.method public oJ(IZ)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(IZ)V

    :cond_0
    return-void
.end method

.method public oJ(JJ)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/so/oJ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk(J)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn:Z

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->so()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/component/ZYk;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/ZYk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/ZYk;->oJ(JJ)V

    :cond_1
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ba(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->so(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->Pfn()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kkU(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->BTZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->ZYk()Lcom/bytedance/sdk/openadsdk/component/so/ZYk;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->cFZ()Lcom/bytedance/sdk/openadsdk/component/so/tB;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/so/tB;->ZYk()Lcom/bytedance/sdk/openadsdk/component/so/ZYk;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
