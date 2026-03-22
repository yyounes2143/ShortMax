.class Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/so/QSm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->si:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->jFA()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/QSm$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-wide/16 v2, 0x1f4

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
