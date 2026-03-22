.class Lcom/bytedance/sdk/openadsdk/common/awB$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/tB/BTZ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/awB;->ba()Lcom/bytedance/sdk/openadsdk/tB/BTZ$oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/common/awB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/awB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/openadsdk/FilterWord;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/awB;->oJ(Lcom/bytedance/sdk/openadsdk/common/awB;)Lcom/bytedance/sdk/openadsdk/tB/kkU;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->tB(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/awB$2;->oJ:Lcom/bytedance/sdk/openadsdk/common/awB;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
