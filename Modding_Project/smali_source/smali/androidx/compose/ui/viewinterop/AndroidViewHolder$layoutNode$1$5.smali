.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;
.super Ljava/lang/Object;
.source "AndroidViewHolder.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidViewHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field final synthetic $this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;


# direct methods
.method constructor <init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final intrinsicHeight(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2, p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method private final intrinsicWidth(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    invoke-static {v3, v1, p1, v4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$measure"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 51
    .line 52
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    .line 71
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 76
    .line 77
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    iget-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 86
    .line 87
    invoke-virtual {p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    .line 96
    invoke-static {v1, v2, p3, p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->measure(II)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;

    .line 116
    .line 117
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 118
    .line 119
    iget-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 120
    .line 121
    invoke-direct {v4, p2, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    .line 122
    .line 123
    .line 124
    const/4 v5, 0x4

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    move-object v0, p1

    .line 128
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicHeight(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicWidth(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
