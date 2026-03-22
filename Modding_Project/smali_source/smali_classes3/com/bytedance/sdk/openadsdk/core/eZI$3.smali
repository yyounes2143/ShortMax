.class Lcom/bytedance/sdk/openadsdk/core/eZI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/eZI;->ZYk(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/eZI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/eZI;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/ba;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/eZI;)Lcom/bytedance/sdk/openadsdk/oJ/ZYk/ba;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
