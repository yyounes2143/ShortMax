.class public Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;
    }
.end annotation


# instance fields
.field private i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 10
    .line 11
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, -0x2

    .line 22
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    const/4 v2, -0x2

    .line 24
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->k:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->j:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public c()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->j:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->a()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    return v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    .line 36
    add-int/lit8 p1, p1, -0x1

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->a()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    return v1

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->m:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->m:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->j:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->k:Landroid/view/View;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v1, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->m:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->m:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->i:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v1, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
