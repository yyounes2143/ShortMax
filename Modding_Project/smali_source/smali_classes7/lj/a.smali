.class public final Llj/a;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Llj/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llj/a;

    .line 2
    .line 3
    invoke-direct {v0}, Llj/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llj/a;->a:Llj/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v1, Landroid/app/Activity;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    if-ne p2, p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    move-object v3, p2

    .line 43
    :cond_3
    :goto_0
    if-eq v3, v0, :cond_6

    .line 44
    .line 45
    if-eq v3, p1, :cond_6

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    add-int/2addr v4, v5

    .line 55
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    add-int/2addr v4, v5

    .line 62
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v4, "null cannot be cast to non-null type android.view.View"

    .line 69
    .line 70
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast v3, Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    instance-of v5, v5, Landroid/widget/ScrollView;

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "null cannot be cast to non-null type android.widget.ScrollView"

    .line 88
    .line 89
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v5, Landroid/widget/ScrollView;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    sub-int/2addr v6, v5

    .line 101
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    instance-of v5, v5, Landroid/widget/HorizontalScrollView;

    .line 108
    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const-string v6, "null cannot be cast to non-null type android.widget.HorizontalScrollView"

    .line 116
    .line 117
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    check-cast v5, Landroid/widget/HorizontalScrollView;

    .line 121
    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    sub-int/2addr v6, v5

    .line 129
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-eqz v5, :cond_3

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    instance-of v5, v5, Landroidx/viewpager/widget/ViewPager;

    .line 142
    .line 143
    if-eqz v5, :cond_3

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    check-cast v3, Landroid/view/View;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_6
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    add-int/2addr p1, v0

    .line 162
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 163
    .line 164
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    add-int/2addr p1, p2

    .line 171
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    return-object v1

    .line 174
    :cond_7
    :goto_1
    return-object v0
.end method
