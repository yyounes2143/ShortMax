.class Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/RZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/RZ;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/eZI;->setCanInterruptVideoPlay(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/RZ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/RZ;)Lcom/bytedance/sdk/openadsdk/core/so/eZI;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/RZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/RZ;

    .line 21
    .line 22
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry:I

    .line 23
    .line 24
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->RZ:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->ZYk(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
