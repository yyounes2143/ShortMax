.class Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oJ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public oJ(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/ZYk/tB;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 3
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XAo()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ofl()I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;I)V
    .locals 1
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$oJ;->oJ(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/tB/oJ$ZYk;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
