.class public Lfc/c;
.super Ljava/lang/Object;
.source "ScrollingUtil.java"


# direct methods
.method private static a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)I
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const-string v1, "mDecorInsets"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/graphics/Rect;

    .line 18
    .line 19
    iget p0, p0, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static b(Landroid/widget/AbsListView;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/ListAdapter;

    .line 25
    .line 26
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    sub-int/2addr v2, v3

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v1, v3

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-gt v1, p0, :cond_0

    .line 52
    .line 53
    move v0, v3

    .line 54
    :cond_0
    return v0
.end method

.method public static c(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    return v0
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v3

    .line 27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lt v2, v4, :cond_1

    .line 42
    .line 43
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    xor-int/2addr p0, v3

    .line 48
    return p0

    .line 49
    :cond_1
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sub-int/2addr v1, v3

    .line 60
    if-ne p0, v1, :cond_4

    .line 61
    .line 62
    return v3

    .line 63
    :cond_2
    instance-of p0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v3

    .line 79
    array-length v2, p0

    .line 80
    move v4, v0

    .line 81
    :goto_0
    if-ge v4, v2, :cond_4

    .line 82
    .line 83
    aget v5, p0, v4

    .line 84
    .line 85
    if-ne v5, v1, :cond_3

    .line 86
    .line 87
    return v3

    .line 88
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    :goto_1
    return v0
.end method

.method public static e(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-lt v3, v4, :cond_2

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    xor-int/2addr p0, v2

    .line 47
    return p0

    .line 48
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    .line 64
    sub-int/2addr v3, v5

    .line 65
    invoke-static {v4}, Lfc/c;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sub-int/2addr v3, v4

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    sub-int/2addr v3, p0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v3, v0

    .line 77
    :goto_0
    instance-of p0, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-ge p0, v2, :cond_5

    .line 88
    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    return v2

    .line 92
    :cond_4
    instance-of p0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    aget p0, p0, v0

    .line 104
    .line 105
    if-ge p0, v2, :cond_5

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    return v2

    .line 110
    :cond_5
    return v0
.end method

.method public static f(Landroid/view/ViewGroup;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr v2, p0

    .line 21
    if-gt v1, v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_0
    return v0
.end method

.method public static g(Landroid/view/View;I)Z
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/widget/AbsListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/widget/AbsListView;

    .line 6
    .line 7
    invoke-static {p0}, Lfc/c;->b(Landroid/widget/AbsListView;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-static {p0}, Lfc/c;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    instance-of v0, p0, Landroid/webkit/WebView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, Landroid/webkit/WebView;

    .line 28
    .line 29
    invoke-static {p0, p1}, Lfc/c;->i(Landroid/webkit/WebView;I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_2
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    check-cast p0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    invoke-static {p0}, Lfc/c;->f(Landroid/view/ViewGroup;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public static h(Landroid/view/View;I)Z
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/widget/AbsListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/widget/AbsListView;

    .line 6
    .line 7
    invoke-static {p0}, Lfc/c;->c(Landroid/widget/AbsListView;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-static {p0}, Lfc/c;->e(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    mul-int/lit8 p1, p1, 0x2

    .line 34
    .line 35
    if-gt p0, p1, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    :goto_0
    return p0
.end method

.method public static i(Landroid/webkit/WebView;I)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    mul-float/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr v1, p0

    .line 22
    int-to-float p0, v1

    .line 23
    sub-float/2addr v0, p0

    .line 24
    mul-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    int-to-float p0, p1

    .line 27
    cmpg-float p0, v0, p0

    .line 28
    .line 29
    if-gtz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static j(Landroid/view/View;I)V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    instance-of v1, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, p0, Landroid/widget/ScrollView;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast p0, Landroid/widget/ScrollView;

    .line 19
    .line 20
    invoke-virtual {p0, v2, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v1, p0, Landroid/widget/AbsListView;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    check-cast p0, Landroid/widget/AbsListView;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "smoothScrollBy"

    .line 39
    .line 40
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->scrollBy(II)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
