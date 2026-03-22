.class public Lcom/drake/brv/listener/DefaultItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DefaultItemTouchCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/drake/brv/BindingAdapter$BindingViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/drake/brv/BindingAdapter$BindingViewHolder;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V
    .locals 1
    .param p1    # Lcom/drake/brv/BindingAdapter$BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drake/brv/BindingAdapter$BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "target"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewHolder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    const-string p2, "swipe"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "viewHolder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of p1, p2, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    check-cast p2, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p2, p1, Ll1/c;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    move-object p2, p1

    .line 27
    check-cast p2, Ll1/c;

    .line 28
    .line 29
    invoke-interface {p2}, Ll1/c;->a()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p2, v0

    .line 35
    :goto_0
    instance-of v1, p1, Ll1/h;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast p1, Ll1/h;

    .line 40
    .line 41
    invoke-interface {p1}, Ll1/h;->a()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :cond_1
    move p1, v0

    .line 46
    move v0, p2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move p1, v0

    .line 49
    :goto_1
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recyclerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewHolder"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p6, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const-string v1, "swipe"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "target"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lo1/b;->a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/drake/brv/BindingAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->u()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    move-object v1, v4

    .line 52
    :cond_2
    if-eqz v1, :cond_4

    .line 53
    .line 54
    instance-of v4, p2, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    instance-of v4, p3, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 59
    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/drake/brv/BindingAdapter;->C(I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->o()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int v2, v3, v2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->o()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-int v4, p1, v4

    .line 79
    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->d:Ljava/lang/Integer;

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    move-object p1, p3

    .line 98
    check-cast p1, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->d:Ljava/lang/Integer;

    .line 109
    .line 110
    :cond_3
    check-cast p2, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 111
    .line 112
    iput-object p2, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->b:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 113
    .line 114
    check-cast p3, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 115
    .line 116
    iput-object p3, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    return p1

    .line 120
    :cond_4
    return v2
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->b:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 6
    .line 7
    iget v0, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->a:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->d:Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/drake/brv/listener/DefaultItemTouchCallback;->a(Lcom/drake/brv/BindingAdapter$BindingViewHolder;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->d:Ljava/lang/Integer;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iput p2, p0, Lcom/drake/brv/listener/DefaultItemTouchCallback;->a:I

    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    instance-of v0, p2, Lcom/drake/brv/BindingAdapter;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p2, Lcom/drake/brv/BindingAdapter;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, v1

    .line 19
    :goto_0
    if-nez p2, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter;->o()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ge p1, v0, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/drake/brv/BindingAdapter;->J(Ljava/lang/Object;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter;->u()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    move-object v1, v2

    .line 52
    :cond_3
    if-eqz v1, :cond_4

    .line 53
    .line 54
    sub-int v0, p1, v0

    .line 55
    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_1
    return-void
.end method
