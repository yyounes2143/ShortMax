.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ypD(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->eZI()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->SB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;->oJ()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
