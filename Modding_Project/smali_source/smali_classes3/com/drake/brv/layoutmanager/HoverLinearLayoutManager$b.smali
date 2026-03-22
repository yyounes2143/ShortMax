.class Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HoverLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;


# direct methods
.method private constructor <init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;-><init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->s(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Lcom/drake/brv/BindingAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->s(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Lcom/drake/brv/BindingAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Lcom/drake/brv/BindingAdapter;->B(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->t(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->l(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

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
    const/4 v1, -0x1

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 15
    .line 16
    invoke-static {v2, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    if-eq v2, v1, :cond_0

    .line 21
    .line 22
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    add-int/2addr v4, p2

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v0, p1

    .line 58
    :goto_1
    add-int v2, p1, p2

    .line 59
    .line 60
    if-ge v0, v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->s(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Lcom/drake/brv/BindingAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v0}, Lcom/drake/brv/BindingAdapter;->B(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 75
    .line 76
    invoke-static {v2, v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eq v2, v1, :cond_1

    .line 81
    .line 82
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

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
    if-lez v0, :cond_2

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    const/4 v2, -0x1

    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    if-ge v1, v0, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lt v2, p1, :cond_0

    .line 45
    .line 46
    add-int v3, p1, p3

    .line 47
    .line 48
    if-ge v2, v3, :cond_0

    .line 49
    .line 50
    sub-int v3, p2, p1

    .line 51
    .line 52
    add-int/2addr v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-ge p1, p2, :cond_1

    .line 55
    .line 56
    add-int v3, p1, p3

    .line 57
    .line 58
    if-lt v2, v3, :cond_1

    .line 59
    .line 60
    if-gt v2, p2, :cond_1

    .line 61
    .line 62
    sub-int v3, v2, p3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-le p1, p2, :cond_2

    .line 66
    .line 67
    if-lt v2, p2, :cond_2

    .line 68
    .line 69
    if-gt v2, p1, :cond_2

    .line 70
    .line 71
    add-int v3, v2, p3

    .line 72
    .line 73
    :goto_1
    if-eq v3, v2, :cond_2

    .line 74
    .line 75
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->a(I)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

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
    if-lez v0, :cond_3

    .line 12
    .line 13
    add-int v1, p1, p2

    .line 14
    .line 15
    add-int/lit8 v2, v1, -0x1

    .line 16
    .line 17
    :goto_0
    const/4 v3, -0x1

    .line 18
    if-lt v2, p1, :cond_1

    .line 19
    .line 20
    iget-object v4, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 21
    .line 22
    invoke-static {v4, v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->n(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eq v4, v3, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->t(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-static {p1, v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->l(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 79
    .line 80
    invoke-static {p1, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    :goto_1
    if-eq p1, v3, :cond_3

    .line 85
    .line 86
    if-ge p1, v0, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    sub-int/2addr v2, p2

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    add-int/lit8 p1, p1, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    return-void
.end method
