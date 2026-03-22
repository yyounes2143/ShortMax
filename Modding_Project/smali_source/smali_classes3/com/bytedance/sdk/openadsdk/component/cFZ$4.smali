.class Lcom/bytedance/sdk/openadsdk/component/cFZ$4;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cFZ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/cFZ;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->tB(Lcom/bytedance/sdk/openadsdk/component/cFZ;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
