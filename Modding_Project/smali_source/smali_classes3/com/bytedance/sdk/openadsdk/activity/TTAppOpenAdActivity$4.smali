.class Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/awB$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->PiB()V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Pfn()V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$4;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Id(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    :cond_0
    return-void
.end method
