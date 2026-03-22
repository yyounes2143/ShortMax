.class public final Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VariableGridSpacingItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p4, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p3, 0x0

    .line 41
    :goto_0
    if-nez p3, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams"

    .line 53
    .line 54
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3, p4, v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    iget-boolean p4, p0, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;->b:Z

    .line 76
    .line 77
    if-eqz p4, :cond_4

    .line 78
    .line 79
    iget p4, p0, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;->a:I

    .line 80
    .line 81
    mul-int v2, p2, p4

    .line 82
    .line 83
    div-int/2addr v2, v0

    .line 84
    sub-int v2, p4, v2

    .line 85
    .line 86
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    add-int/2addr p2, v1

    .line 89
    mul-int/2addr p2, p4

    .line 90
    div-int/2addr p2, v0

    .line 91
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    if-nez p3, :cond_3

    .line 94
    .line 95
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const/4 p2, 0x0

    .line 99
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 100
    .line 101
    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget p4, p0, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;->a:I

    .line 105
    .line 106
    mul-int v2, p2, p4

    .line 107
    .line 108
    div-int/2addr v2, v0

    .line 109
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    add-int/2addr p2, v1

    .line 112
    mul-int/2addr p2, p4

    .line 113
    div-int/2addr p2, v0

    .line 114
    sub-int p2, p4, p2

    .line 115
    .line 116
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    if-lez p3, :cond_5

    .line 119
    .line 120
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    :cond_5
    :goto_2
    return-void
.end method
