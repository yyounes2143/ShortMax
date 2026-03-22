.class final Lcom/bytedance/sdk/openadsdk/utils/Rl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/Rl;->oJ(Landroid/view/ViewGroup;ZIZLcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Rl$4;->oJ:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Rl$4;->oJ:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const v0, 0x1f000045

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;->oJ()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Rl$4;->oJ:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const v0, 0x1f000045

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;->ZYk()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
