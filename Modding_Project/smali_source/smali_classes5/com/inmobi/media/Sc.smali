.class public final Lcom/inmobi/media/Sc;
.super Lcom/inmobi/media/K8;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroidx/viewpager/widget/ViewPager;

.field public final d:Landroid/graphics/Point;

.field public final e:Landroid/graphics/Point;

.field public f:Z

.field public g:Lcom/inmobi/media/D8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/K8;-><init>(Landroid/content/Context;B)V

    .line 8
    .line 9
    .line 10
    const-class p1, Lcom/inmobi/media/Sc;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/inmobi/media/Sc;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/inmobi/media/Sc;->d:Landroid/graphics/Point;

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/viewpager/widget/ViewPager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/h8;Lcom/inmobi/media/L8;IILcom/inmobi/media/D8;)V
    .locals 2

    .line 1
    const-string v0, "scrollableContainerAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataSource"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lcom/inmobi/media/h8;->B:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/inmobi/media/h8;->A:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/inmobi/media/d8;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p1, v1

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/inmobi/media/D9;->c:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {p1, p0}, Lcom/inmobi/media/n9;->a(Lcom/inmobi/media/d8;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    const/16 v0, 0x14

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 48
    .line 49
    .line 50
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object p1, v1

    .line 54
    :goto_1
    iget-object p4, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 55
    .line 56
    if-eqz p4, :cond_3

    .line 57
    .line 58
    invoke-virtual {p4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    instance-of p1, p2, Lcom/inmobi/media/q8;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    move-object v1, p2

    .line 66
    check-cast v1, Lcom/inmobi/media/q8;

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p4, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x2

    .line 72
    invoke-virtual {p4, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x10

    .line 76
    .line 77
    invoke-virtual {p4, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iput-object p5, p0, Lcom/inmobi/media/Sc;->g:Lcom/inmobi/media/D8;

    .line 84
    .line 85
    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/inmobi/media/Sc;->f:Z

    .line 7
    .line 8
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/inmobi/media/Sc;->f:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Sc;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    instance-of v3, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v0, v2

    .line 27
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/Sc;->g:Lcom/inmobi/media/D8;

    .line 28
    .line 29
    if-eqz v3, :cond_b

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    iput p1, v3, Lcom/inmobi/media/D8;->k:I

    .line 36
    .line 37
    iget-object v4, v3, Lcom/inmobi/media/D8;->c:Lcom/inmobi/media/p8;

    .line 38
    .line 39
    invoke-virtual {v4, p1}, Lcom/inmobi/media/p8;->b(I)Lcom/inmobi/media/h8;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_8

    .line 44
    .line 45
    iget-object v5, v3, Lcom/inmobi/media/D8;->d:Lcom/inmobi/media/w8;

    .line 46
    .line 47
    const-string v6, "asset"

    .line 48
    .line 49
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v5, Lcom/inmobi/media/w8;->a:Lcom/inmobi/media/x8;

    .line 53
    .line 54
    iget-boolean v7, v5, Lcom/inmobi/media/x8;->a:Z

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v5, v5, Lcom/inmobi/media/x8;->b:Lcom/inmobi/media/T7;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v6, v5, Lcom/inmobi/media/T7;->n:Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_8

    .line 78
    .line 79
    iget-boolean v6, v5, Lcom/inmobi/media/T7;->t:Z

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {v5}, Lcom/inmobi/media/T7;->m()V

    .line 85
    .line 86
    .line 87
    iget-boolean v6, v5, Lcom/inmobi/media/T7;->t:Z

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    iget-object v6, v5, Lcom/inmobi/media/T7;->n:Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    iput-wide v6, v4, Lcom/inmobi/media/h8;->y:J

    .line 106
    .line 107
    iget-boolean p1, v5, Lcom/inmobi/media/T7;->r:Z

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object v6, v5, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 116
    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    iget-object v7, v5, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast v6, Lcom/inmobi/media/A5;

    .line 125
    .line 126
    const-string v1, "Page-view impression record request"

    .line 127
    .line 128
    invoke-virtual {v6, v7, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-object v1, v5, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 132
    .line 133
    const-string v5, "page_view"

    .line 134
    .line 135
    invoke-virtual {v4, v5, p1, v2, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    iget-object p1, v5, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_2
    iget p1, v3, Lcom/inmobi/media/D8;->k:I

    .line 145
    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    const p1, 0x800003

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    iget-object v1, v3, Lcom/inmobi/media/D8;->c:Lcom/inmobi/media/p8;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/inmobi/media/p8;->d()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const/4 v2, 0x1

    .line 159
    sub-int/2addr v1, v2

    .line 160
    if-ne p1, v1, :cond_a

    .line 161
    .line 162
    const p1, 0x800005

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move p1, v2

    .line 167
    :goto_3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    .line 169
    :goto_4
    iget-object p1, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 170
    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 174
    .line 175
    .line 176
    :cond_b
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/inmobi/media/Sc;->d:Landroid/graphics/Point;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    div-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/inmobi/media/Sc;->d:Landroid/graphics/Point;

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 19
    .line 20
    iget-object v3, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 21
    .line 22
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    sub-int/2addr v2, v4

    .line 25
    int-to-float v2, v2

    .line 26
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    sub-int/2addr v0, v3

    .line 31
    int-to-float v0, v0

    .line 32
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 38
    .line 39
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-object v6, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 69
    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    sub-int/2addr v5, v2

    .line 81
    if-ne v5, v4, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    sub-int v2, v7, v6

    .line 85
    .line 86
    div-int/lit8 v2, v2, 0x2

    .line 87
    .line 88
    int-to-float v2, v2

    .line 89
    cmpg-float v4, v0, v2

    .line 90
    .line 91
    if-gez v4, :cond_2

    .line 92
    .line 93
    cmpg-float v4, v3, v2

    .line 94
    .line 95
    if-gez v4, :cond_2

    .line 96
    .line 97
    sub-float/2addr v2, v3

    .line 98
    int-to-float v0, v6

    .line 99
    div-float/2addr v2, v0

    .line 100
    float-to-double v2, v2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    :goto_0
    neg-double v2, v2

    .line 106
    :goto_1
    double-to-int v0, v2

    .line 107
    goto :goto_3

    .line 108
    :cond_2
    add-int/2addr v7, v6

    .line 109
    div-int/lit8 v7, v7, 0x2

    .line 110
    .line 111
    int-to-float v2, v7

    .line 112
    cmpl-float v0, v0, v2

    .line 113
    .line 114
    if-lez v0, :cond_5

    .line 115
    .line 116
    cmpl-float v0, v3, v2

    .line 117
    .line 118
    if-lez v0, :cond_5

    .line 119
    .line 120
    sub-float/2addr v3, v2

    .line 121
    int-to-float v0, v6

    .line 122
    div-float/2addr v3, v0

    .line 123
    float-to-double v2, v3

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    :goto_2
    sub-int/2addr v7, v6

    .line 130
    if-nez v4, :cond_4

    .line 131
    .line 132
    int-to-float v2, v7

    .line 133
    cmpl-float v0, v0, v2

    .line 134
    .line 135
    if-lez v0, :cond_5

    .line 136
    .line 137
    cmpl-float v0, v3, v2

    .line 138
    .line 139
    if-lez v0, :cond_5

    .line 140
    .line 141
    sub-float/2addr v3, v2

    .line 142
    int-to-float v0, v6

    .line 143
    div-float/2addr v3, v0

    .line 144
    float-to-double v2, v3

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    int-to-float v2, v7

    .line 151
    cmpg-float v0, v0, v2

    .line 152
    .line 153
    if-gez v0, :cond_5

    .line 154
    .line 155
    cmpg-float v0, v3, v2

    .line 156
    .line 157
    if-gez v0, :cond_5

    .line 158
    .line 159
    sub-float/2addr v2, v3

    .line 160
    int-to-float v0, v6

    .line 161
    div-float/2addr v2, v0

    .line 162
    float-to-double v2, v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    goto :goto_0

    .line 168
    :cond_5
    move v0, v1

    .line 169
    :goto_3
    if-eqz v0, :cond_6

    .line 170
    .line 171
    const/4 v2, 0x3

    .line 172
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 176
    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    add-int/2addr v3, v0

    .line 184
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/Sc;->d:Landroid/graphics/Point;

    .line 188
    .line 189
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 190
    .line 191
    iget-object v3, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 192
    .line 193
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 194
    .line 195
    sub-int/2addr v2, v4

    .line 196
    int-to-float v2, v2

    .line 197
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 198
    .line 199
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 200
    .line 201
    sub-int/2addr v0, v3

    .line 202
    int-to-float v0, v0

    .line 203
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    float-to-int v2, v2

    .line 214
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 215
    .line 216
    iget-object v0, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    float-to-int v2, v2

    .line 223
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 224
    .line 225
    iget-object v0, p0, Lcom/inmobi/media/Sc;->d:Landroid/graphics/Point;

    .line 226
    .line 227
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 228
    .line 229
    iget-object v3, p0, Lcom/inmobi/media/Sc;->e:Landroid/graphics/Point;

    .line 230
    .line 231
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 232
    .line 233
    sub-int/2addr v2, v4

    .line 234
    int-to-float v2, v2

    .line 235
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 236
    .line 237
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 238
    .line 239
    sub-int/2addr v0, v3

    .line 240
    int-to-float v0, v0

    .line 241
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 242
    .line 243
    .line 244
    :goto_4
    iget-object v0, p0, Lcom/inmobi/media/Sc;->c:Landroidx/viewpager/widget/ViewPager;

    .line 245
    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    :cond_8
    return v1
.end method
