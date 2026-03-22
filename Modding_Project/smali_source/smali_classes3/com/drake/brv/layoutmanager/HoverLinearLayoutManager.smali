.class public Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "HoverLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;,
        Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;
    }
.end annotation


# instance fields
.field private a:Lcom/drake/brv/BindingAdapter;

.field private b:F

.field private c:F

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;-><init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;)V

    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 5
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 6
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->j:Z

    .line 8
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 11
    new-instance p1, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$b;-><init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;)V

    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 13
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 14
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->j:Z

    .line 16
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    return-void
.end method

.method private A(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-gt v1, v0, :cond_2

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 19
    .line 20
    add-int/lit8 v4, v2, -0x1

    .line 21
    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lt v3, p1, :cond_0

    .line 33
    .line 34
    move v0, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ge v1, p1, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return v2

    .line 55
    :cond_2
    const/4 p1, -0x1

    .line 56
    return p1
.end method

.method private B(Landroid/view/View;Landroid/view/View;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    iget v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v1, v2

    .line 25
    int-to-float v1, v1

    .line 26
    add-float/2addr v0, v1

    .line 27
    :cond_0
    if-eqz p2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v2

    .line 57
    int-to-float p1, p1

    .line 58
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    .line 77
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 78
    .line 79
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    sub-int/2addr p2, v2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sub-int/2addr p2, p1

    .line 89
    int-to-float p1, p2

    .line 90
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :cond_4
    :goto_0
    return v0

    .line 95
    :cond_5
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 96
    .line 97
    return p1
.end method

.method private C(Landroid/view/View;Landroid/view/View;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_5

    .line 7
    .line 8
    iget v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v1, v2

    .line 25
    int-to-float v1, v1

    .line 26
    add-float/2addr v0, v1

    .line 27
    :cond_0
    if-eqz p2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v2

    .line 57
    int-to-float p1, p1

    .line 58
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    .line 77
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 78
    .line 79
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    sub-int/2addr p2, v2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sub-int/2addr p2, p1

    .line 89
    int-to-float p1, p2

    .line 90
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :cond_4
    :goto_0
    return v0

    .line 95
    :cond_5
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 96
    .line 97
    return p1
.end method

.method private D(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-float/2addr v0, p1

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    iget v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 31
    .line 32
    add-float/2addr p1, v3

    .line 33
    cmpl-float p1, v0, p1

    .line 34
    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_0
    return v1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-float/2addr v0, p1

    .line 49
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 50
    .line 51
    cmpg-float p1, v0, p1

    .line 52
    .line 53
    if-gez p1, :cond_2

    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_2
    return v1

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-float v0, v0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sub-float/2addr v0, p1

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    int-to-float p1, p1

    .line 78
    iget v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 79
    .line 80
    add-float/2addr p1, v3

    .line 81
    cmpl-float p1, v0, p1

    .line 82
    .line 83
    if-lez p1, :cond_4

    .line 84
    .line 85
    move v1, v2

    .line 86
    :cond_4
    return v1

    .line 87
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    add-float/2addr v0, p1

    .line 97
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 98
    .line 99
    cmpg-float p1, v0, p1

    .line 100
    .line 101
    if-gez p1, :cond_6

    .line 102
    .line 103
    move v1, v2

    .line 104
    :cond_6
    return v1
.end method

.method private E(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_6

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-float/2addr p2, p1

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-float p1, p1

    .line 42
    iget v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 43
    .line 44
    add-float/2addr p1, v2

    .line 45
    cmpg-float p1, p2, p1

    .line 46
    .line 47
    if-gtz p1, :cond_0

    .line 48
    .line 49
    move v1, v0

    .line 50
    :cond_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    int-to-float p2, p2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sub-float/2addr p2, p1

    .line 61
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->c:F

    .line 62
    .line 63
    cmpl-float p1, p2, p1

    .line 64
    .line 65
    if-ltz p1, :cond_2

    .line 66
    .line 67
    move v1, v0

    .line 68
    :cond_2
    return v1

    .line 69
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    int-to-float p2, p2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    add-float/2addr p2, p1

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    int-to-float p1, p1

    .line 90
    iget v2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 91
    .line 92
    add-float/2addr p1, v2

    .line 93
    cmpg-float p1, p2, p1

    .line 94
    .line 95
    if-gtz p1, :cond_4

    .line 96
    .line 97
    move v1, v0

    .line 98
    :cond_4
    return v1

    .line 99
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    int-to-float p2, p2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sub-float/2addr p2, p1

    .line 109
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->b:F

    .line 110
    .line 111
    cmpl-float p1, p2, p1

    .line 112
    .line 113
    if-ltz p1, :cond_6

    .line 114
    .line 115
    move v1, v0

    .line 116
    :cond_6
    return v1
.end method

.method private F(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v2, v3

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sub-int/2addr v3, v4

    .line 50
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private G(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/drake/brv/BindingAdapter;->w()Lm1/e;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopIgnoringView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private H(IIZ)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->J(II)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->z(I)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eq p3, v0, :cond_5

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->y(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v2, v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->y(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v3, v0, :cond_2

    .line 33
    .line 34
    invoke-super {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->y(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne p3, v0, :cond_4

    .line 49
    .line 50
    if-eq p2, v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 p2, 0x0

    .line 54
    :goto_0
    iget-object p3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    add-int/2addr p2, p3

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->J(II)V

    .line 66
    .line 67
    .line 68
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private I(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Lcom/drake/brv/BindingAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/drake/brv/BindingAdapter;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private J(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 2
    .line 3
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    .line 4
    .line 5
    return-void
.end method

.method private L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v0, :cond_b

    .line 12
    .line 13
    if-lez v1, :cond_b

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    const/4 v4, -0x1

    .line 18
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 29
    .line 30
    invoke-direct {p0, v5, v6}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->E(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v5, v3

    .line 45
    move v1, v4

    .line 46
    move v2, v1

    .line 47
    :goto_1
    if-eqz v5, :cond_b

    .line 48
    .line 49
    if-eq v1, v4, :cond_b

    .line 50
    .line 51
    invoke-direct {p0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->z(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eq v6, v4, :cond_2

    .line 56
    .line 57
    iget-object v7, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move v7, v4

    .line 71
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    if-le v0, v6, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move v0, v4

    .line 89
    :goto_3
    if-eq v7, v4, :cond_b

    .line 90
    .line 91
    if-ne v7, v1, :cond_4

    .line 92
    .line 93
    invoke-direct {p0, v5}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->D(Landroid/view/View;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_b

    .line 98
    .line 99
    :cond_4
    add-int/lit8 v5, v7, 0x1

    .line 100
    .line 101
    if-eq v0, v5, :cond_b

    .line 102
    .line 103
    iget-object v5, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 104
    .line 105
    if-eqz v5, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    iget-object v6, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 112
    .line 113
    invoke-virtual {v6, v7}, Lcom/drake/brv/BindingAdapter;->getItemViewType(I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eq v5, v6, :cond_5

    .line 118
    .line 119
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->G(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object v5, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 123
    .line 124
    if-nez v5, :cond_6

    .line 125
    .line 126
    invoke-direct {p0, p1, v7}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->w(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 127
    .line 128
    .line 129
    :cond_6
    if-nez p2, :cond_7

    .line 130
    .line 131
    iget-object p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eq p2, v7, :cond_8

    .line 138
    .line 139
    :cond_7
    invoke-direct {p0, p1, v7}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->v(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 140
    .line 141
    .line 142
    :cond_8
    if-eq v0, v4, :cond_a

    .line 143
    .line 144
    sub-int/2addr v0, v1

    .line 145
    add-int/2addr v2, v0

    .line 146
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 151
    .line 152
    if-ne p1, p2, :cond_9

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_9
    move-object v3, p1

    .line 156
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 157
    .line 158
    invoke-direct {p0, p1, v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->B(Landroid/view/View;Landroid/view/View;)F

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 166
    .line 167
    invoke-direct {p0, p1, v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->C(Landroid/view/View;Landroid/view/View;)F

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_b
    iget-object p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 176
    .line 177
    if-eqz p2, :cond_c

    .line 178
    .line 179
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->G(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 180
    .line 181
    .line 182
    :cond_c
    return-void
.end method

.method static synthetic k(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->G(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->A(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic n(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->y(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic o(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->J(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Lcom/drake/brv/BindingAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private v(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->bindViewToPosition(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->F(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 14
    .line 15
    const/4 p2, -0x1

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;-><init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Landroid/view/ViewTreeObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private w(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->a:Lcom/drake/brv/BindingAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/drake/brv/BindingAdapter;->w()Lm1/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->F(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->ignoreView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 20
    .line 21
    iput p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->g:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    .line 25
    .line 26
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->k:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->f:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private y(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-gt v1, v0, :cond_2

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-le v3, p1, :cond_0

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ge v1, p1, :cond_1

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return v2

    .line 53
    :cond_2
    const/4 p1, -0x1

    .line 54
    return p1
.end method

.method private z(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-gt v1, v0, :cond_2

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-le v3, p1, :cond_0

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    if-ge v2, v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->d:Ljava/util/List;

    .line 45
    .line 46
    add-int/lit8 v3, v2, 0x1

    .line 47
    .line 48
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-gt v1, p1, :cond_1

    .line 59
    .line 60
    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return v2

    .line 63
    :cond_2
    const/4 p1, -0x1

    .line 64
    return p1
.end method


# virtual methods
.method public K(Z)Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return p1
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->I(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->I(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->c(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->e(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    .line 18
    .line 19
    invoke-static {p1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->a(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->b(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->h:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->d(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;I)I

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->i:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;->f(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$SavedState;I)I

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->H(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->x()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->u()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/drake/brv/listener/SnapLinearSmoothScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Lcom/drake/brv/listener/SnapLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
