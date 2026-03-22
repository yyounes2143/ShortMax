.class Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/ba/tB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->Pfn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ZI)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ba(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(I)V

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(I)V

    return-void
.end method

.method public oJ(ZIFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(ZIIZZ)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;I)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;I)I

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(I)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(I)V

    return-void
.end method
