.class public final Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;
.source "FoldableTextArea.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView<",
        "Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFoldableTextArea.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldableTextArea.kt\ncom/startshorts/androidplayer/ui/view/base/FoldableTextArea\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n254#2:73\n256#2,2:74\n256#2,2:76\n256#2,2:78\n256#2,2:80\n*S KotlinDebug\n*F\n+ 1 FoldableTextArea.kt\ncom/startshorts/androidplayer/ui/view/base/FoldableTextArea\n*L\n44#1:73\n46#1:74,2\n47#1:76,2\n40#1:78,2\n42#1:80,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->i(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->h(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->g(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->e(IILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-gt v1, p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;->setMInterceptParentTouchEvent(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    add-int/lit8 p2, p1, -0x1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 60
    .line 61
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 p2, p1, -0x2

    .line 77
    .line 78
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string p3, "substring(...)"

    .line 87
    .line 88
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 96
    .line 97
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 98
    .line 99
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    const-string p3, "expandTv"

    .line 117
    .line 118
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 129
    .line 130
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/base/b;

    .line 133
    .line 134
    invoke-direct {p3, p0, p4, p1}, Lcom/startshorts/androidplayer/ui/view/base/b;-><init>(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 147
    .line 148
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/base/c;

    .line 149
    .line 150
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/base/c;-><init>(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "bottomTv"

    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 25
    .line 26
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    mul-int/2addr v1, p1

    .line 45
    const/4 p1, 0x1

    .line 46
    sub-int/2addr p2, p1

    .line 47
    div-int/2addr v1, p2

    .line 48
    add-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 p3, 0x8

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 75
    .line 76
    const-string v0, "expandTv"

    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 91
    .line 92
    const p3, 0x7fffffff

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 103
    .line 104
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;->setMInterceptParentTouchEvent(Z)V

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private static final i(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x41a00000    # 20.0f

    .line 18
    .line 19
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    sub-int/2addr v2, v1

    .line 26
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    sub-int/2addr v2, v1

    .line 31
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    add-int/2addr v2, v1

    .line 36
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    add-int/2addr v2, v1

    .line 41
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    new-instance v1, Landroid/view/TouchDelegate;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->b:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    instance-of v0, p0, Landroid/view/View;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    check-cast p0, Landroid/view/View;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 p0, 0x0

    .line 76
    :goto_0
    if-eqz p0, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public final e(IILjava/lang/String;I)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseBindingView;->getMBinding()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/InterceptParentTouchScrollView;

    .line 30
    .line 31
    new-instance v7, Lcom/startshorts/androidplayer/ui/view/base/a;

    .line 32
    .line 33
    move-object v1, v7

    .line 34
    move-object v2, p0

    .line 35
    move v3, p1

    .line 36
    move v4, p4

    .line 37
    move-object v5, p3

    .line 38
    move v6, p2

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/base/a;-><init>(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_flodable_text_area:I

    .line 2
    .line 3
    return v0
.end method
