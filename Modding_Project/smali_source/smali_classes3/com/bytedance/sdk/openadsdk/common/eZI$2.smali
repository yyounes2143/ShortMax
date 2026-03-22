.class Lcom/bytedance/sdk/openadsdk/common/eZI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/eZI;->tB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/eZI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/eZI$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/eZI$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/common/eZI;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/eZI$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/common/eZI;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->dLZ()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/eZI$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 22
    .line 23
    const-string v0, "forward"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/common/eZI;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/eZI$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/eZI;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/common/eZI;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->BTZ()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
