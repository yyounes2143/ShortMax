.class Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;",
        ">;"
    }
.end annotation


# instance fields
.field private Pfn:Z

.field private final ZYk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            ">;"
        }
    .end annotation
.end field

.field private ex:Z

.field private final oJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/activity/ex$ex;",
            ">;"
        }
    .end annotation
.end field

.field private final tB:Lcom/bytedance/sdk/openadsdk/activity/ex;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/activity/ex;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p1, v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eL()V

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    .line 23
    .line 24
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->oJ:I

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public ZYk()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V
    .locals 1
    .param p1    # Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Jm()V

    :cond_0
    return-void
.end method

.method public ex()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    rem-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    .line 15
    .line 16
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->oJ:I

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public oJ()I
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->getItemCount()I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public oJ(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/ex$tB;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$tB;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/ex;->jr(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {p2, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;-><init>(Landroid/content/Context;ZZI)V

    .line 5
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;Landroid/view/View;)V

    return-object p1
.end method

.method public oJ(II)V
    .locals 4

    .line 33
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn:Z

    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v2, p2, p1

    const v3, 0x7fffffff

    sub-int/2addr v3, p2

    sub-int p1, v1, p1

    sub-int/2addr v3, p1

    .line 36
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 37
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V
    .locals 0
    .param p1    # Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;I)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB:Lcom/bytedance/sdk/openadsdk/activity/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/ex$ex;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 16
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->oJ:I

    if-ne v4, v3, :cond_2

    if-nez v2, :cond_1

    .line 17
    iput-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->tB:Ljava/lang/String;

    sub-int/2addr v0, v3

    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sub-int/2addr v0, v3

    .line 20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex:Z

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 24
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex:Z

    :cond_3
    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ex:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ:Ljava/util/ArrayList;

    add-int v4, v0, v1

    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;

    invoke-direct {v5, v2}, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eL()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Landroid/view/ViewGroup;I)Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->tB(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->ZYk:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk()V

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->Pfn:Z

    return v0
.end method
