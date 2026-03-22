.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->tB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    sub-long v5, v4, v6

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v4, "success"

    .line 30
    .line 31
    const-string v8, "endcard"

    .line 32
    .line 33
    move-object v7, p1

    .line 34
    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->Pfn()V

    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 10

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)J

    move-result-wide v5

    sub-long v5, v0, v5

    const/4 v9, 0x0

    move v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)J

    move-result-wide v6

    sub-long v5, v4, v6

    const-string v8, "endcard"

    const/4 v2, 0x0

    const-string v4, "fail"

    move-object v7, p3

    move v9, p1

    move-object v10, p2

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;J)J

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    move-result-object p1

    .line 14
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v1, "tt_skip_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->jFA()V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->cFZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;J)J

    return-void
.end method
