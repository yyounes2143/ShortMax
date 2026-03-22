.class public final Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/L8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/inmobi/media/I8;",
        ">;",
        "Lcom/inmobi/media/L8;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public a:Lcom/inmobi/media/p8;

.field public b:Lcom/inmobi/media/D8;

.field public final c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/p8;Lcom/inmobi/media/D8;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/p8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/media/D8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "nativeDataModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeLayoutInflater"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->a:Lcom/inmobi/media/p8;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->b:Lcom/inmobi/media/D8;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->c:Landroid/util/SparseArray;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public buildScrollableView(ILandroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/h8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p1, "parent"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageContainerAsset"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->b:Lcom/inmobi/media/D8;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3}, Lcom/inmobi/media/D8;->a(Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->b:Lcom/inmobi/media/D8;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v2, "container"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "root"

    .line 36
    .line 37
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, p3}, Lcom/inmobi/media/D8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->a:Lcom/inmobi/media/p8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lcom/inmobi/media/p8;->l:Lcom/inmobi/media/Ue;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->a:Lcom/inmobi/media/p8;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->b:Lcom/inmobi/media/D8;

    .line 13
    .line 14
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->a:Lcom/inmobi/media/p8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/p8;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/inmobi/media/I8;

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->onBindViewHolder(Lcom/inmobi/media/I8;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/inmobi/media/I8;I)V
    .locals 4
    .param p1    # Lcom/inmobi/media/I8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->a:Lcom/inmobi/media/p8;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/inmobi/media/p8;->b(I)Lcom/inmobi/media/h8;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/inmobi/media/I8;->a:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p0, p2, v1, v0}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->buildScrollableView(ILandroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_3

    .line 8
    iget-object v0, p1, Lcom/inmobi/media/I8;->a:Landroid/view/ViewGroup;

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_3
    iget-object p1, p1, Lcom/inmobi/media/I8;->a:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/inmobi/media/I8;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/inmobi/media/I8;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/inmobi/media/I8;

    invoke-direct {p1, p2}, Lcom/inmobi/media/I8;-><init>(Landroid/widget/FrameLayout;)V

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/inmobi/media/I8;

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;->onViewRecycled(Lcom/inmobi/media/I8;)V

    return-void
.end method

.method public onViewRecycled(Lcom/inmobi/media/I8;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/I8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/inmobi/media/I8;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
