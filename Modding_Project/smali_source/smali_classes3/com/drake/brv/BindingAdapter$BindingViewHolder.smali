.class public final Lcom/drake/brv/BindingAdapter$BindingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BindingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drake/brv/BindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BindingViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private c:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/drake/brv/BindingAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Landroidx/viewbinding/ViewBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic g:Lcom/drake/brv/BindingAdapter;


# direct methods
.method public constructor <init>(Lcom/drake/brv/BindingAdapter;Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/drake/brv/BindingAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->b(Lcom/drake/brv/BindingAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->c:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->d:Lcom/drake/brv/BindingAdapter;

    .line 4
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->a(Lcom/drake/brv/BindingAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    new-instance v2, Lj1/a;

    invoke-direct {v2, p2, v1, p0}, Lj1/a;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-virtual {v1}, Lcom/drake/brv/BindingAdapter;->l()J

    move-result-wide v1

    new-instance v3, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;

    iget-object v4, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-direct {v3, p2, v4, p0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-static {v0, v1, v2, v3}, Lm1/d;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->d(Lcom/drake/brv/BindingAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    new-instance v2, Lj1/b;

    invoke-direct {v2, p2, v1, p0}, Lj1/b;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/drake/brv/BindingAdapter;Landroidx/databinding/ViewDataBinding;)V
    .locals 6
    .param p1    # Lcom/drake/brv/BindingAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->b(Lcom/drake/brv/BindingAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->c:Landroid/content/Context;

    .line 14
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->d:Lcom/drake/brv/BindingAdapter;

    .line 15
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->a(Lcom/drake/brv/BindingAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    new-instance v3, Lj1/a;

    invoke-direct {v3, v0, v2, p0}, Lj1/a;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->l()J

    move-result-wide v2

    new-instance v4, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;

    iget-object v5, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-direct {v4, v0, v5, p0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-static {v1, v2, v3, v4}, Lm1/d;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->d(Lcom/drake/brv/BindingAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object v2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    new-instance v3, Lj1/b;

    invoke-direct {v3, v0, v2, p0}, Lj1/b;-><init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 23
    :cond_4
    iput-object p2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->f:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public static synthetic c(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->e(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->f(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final e(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "$clickListener"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "this$1"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->f(Lcom/drake/brv/BindingAdapter;)Lkotlin/jvm/functions/Function2;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_0
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private static final f(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Z
    .locals 1

    .line 1
    const-string v0, "$longClickListener"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "this$1"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/drake/brv/BindingAdapter;->g(Lcom/drake/brv/BindingAdapter;)Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->v()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lm1/b;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/drake/brv/BindingAdapter;->x()Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->h()Lcom/drake/brv/BindingAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-interface {v2, v3, v4, p0, v5}, Lm1/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Ll1/f;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    check-cast v0, Ll1/f;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->k()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-interface {v0, v1}, Ll1/f;->a(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    instance-of v0, p1, Ll1/b;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    move-object v0, p1

    .line 72
    check-cast v0, Ll1/b;

    .line 73
    .line 74
    invoke-interface {v0, p0}, Ll1/b;->a(Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/drake/brv/BindingAdapter;->e(Lcom/drake/brv/BindingAdapter;)Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :goto_1
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->f:Landroidx/viewbinding/ViewBinding;

    .line 90
    .line 91
    sget-object v1, Lcom/drake/brv/BindingAdapter;->K:Lcom/drake/brv/BindingAdapter$a;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/drake/brv/BindingAdapter$a;->a(Lcom/drake/brv/BindingAdapter$a;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    :try_start_0
    move-object v1, v0

    .line 104
    check-cast v1, Landroidx/databinding/ViewDataBinding;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/drake/brv/BindingAdapter;->t()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v1, "DataBinding type mismatch ("

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->c:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ".xml:1)"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-class v1, Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_2
    return-void
.end method

.method public final h()Lcom/drake/brv/BindingAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->d:Lcom/drake/brv/BindingAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->m()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->g:Lcom/drake/brv/BindingAdapter;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/drake/brv/BindingAdapter;->o()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final l()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->f:Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->e:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "_data"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object v0
.end method

.method public final n(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->f:Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    return-void
.end method
