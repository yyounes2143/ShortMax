.class public Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Lcc/e;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    }
.end annotation


# static fields
.field private static e0:Ljava/lang/String; = ""

.field private static f0:Ljava/lang/String; = ""


# instance fields
.field protected A:Z

.field private B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private final C:I

.field private D:Lcc/e;

.field private final E:Landroidx/core/view/NestedScrollingChildHelper;

.field private F:Lec/c;

.field private G:Lcc/d;

.field private H:F

.field private I:F

.field private J:Landroid/view/VelocityTracker;

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:I

.field private P:I

.field private Q:Landroid/view/MotionEvent;

.field private R:Z

.field private S:I

.field private final T:[I

.field private final U:[I

.field private final V:[I

.field private W:I

.field protected a:F

.field private a0:I

.field protected b:F

.field private b0:I

.field protected c:F

.field private c0:Z

.field protected d:F

.field private d0:Lcc/k;

.field private e:Landroid/view/View;

.field protected f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:I

.field private i:Lcc/b;

.field private j:Lcc/a;

.field private k:F

.field private l:Landroid/widget/FrameLayout;

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->h:I

    .line 5
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->m:Z

    .line 6
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->n:Z

    .line 7
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->o:Z

    .line 8
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->p:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 10
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 11
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 12
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 13
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 14
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    .line 15
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    .line 16
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    .line 17
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 18
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z:Z

    .line 19
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A:Z

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:I

    .line 21
    iput-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:Lcc/e;

    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:I

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    mul-int/2addr v2, v2

    .line 24
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->S:I

    const/4 v2, 0x2

    .line 25
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 26
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->U:[I

    .line 27
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V:[I

    const/4 v2, -0x1

    .line 28
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 29
    sget-object v2, Lcc/j;->b:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 30
    :try_start_0
    sget p3, Lcc/j;->l:I

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {p1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 31
    sget p3, Lcc/j;->j:I

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {p1, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 32
    sget p3, Lcc/j;->k:I

    invoke-static {p1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    .line 33
    sget p3, Lcc/j;->d:I

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 34
    sget p1, Lcc/j;->n:I

    iget p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 35
    sget p1, Lcc/j;->h:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 36
    sget p1, Lcc/j;->f:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 37
    sget p1, Lcc/j;->p:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 38
    sget p1, Lcc/j;->o:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 39
    sget p1, Lcc/j;->m:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 40
    sget p1, Lcc/j;->g:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    .line 41
    sget p1, Lcc/j;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    .line 42
    sget p1, Lcc/j;->c:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    .line 43
    sget p1, Lcc/j;->e:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 44
    sget p1, Lcc/j;->r:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z:Z

    .line 45
    sget p1, Lcc/j;->q:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 48
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y()V

    .line 49
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x()V

    .line 50
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 51
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 52
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 53
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 54
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 55
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private A(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V:[I

    .line 18
    .line 19
    aput v3, v5, v4

    .line 20
    .line 21
    aput v3, v5, v3

    .line 22
    .line 23
    :cond_0
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V:[I

    .line 24
    .line 25
    aget v6, v5, v3

    .line 26
    .line 27
    int-to-float v6, v6

    .line 28
    aget v5, v5, v4

    .line 29
    .line 30
    int-to-float v5, v5

    .line 31
    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-eqz v1, :cond_9

    .line 36
    .line 37
    if-eq v1, v4, :cond_8

    .line 38
    .line 39
    if-eq v1, v5, :cond_2

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    if-eq v1, v5, :cond_8

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    if-eq v1, v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    float-to-int v1, v1

    .line 60
    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a0:I

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-int p1, p1

    .line 67
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-gez v1, :cond_3

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "Error processing scroll; pointer index for id "

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "TwinklingRefreshLayout"

    .line 104
    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    float-to-int v2, v2

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    float-to-int p1, p1

    .line 119
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a0:I

    .line 120
    .line 121
    sub-int/2addr v1, v2

    .line 122
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 123
    .line 124
    sub-int/2addr v2, p1

    .line 125
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->U:[I

    .line 126
    .line 127
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 128
    .line 129
    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->U:[I

    .line 136
    .line 137
    aget v5, v1, v3

    .line 138
    .line 139
    aget v1, v1, v4

    .line 140
    .line 141
    sub-int/2addr v2, v1

    .line 142
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 143
    .line 144
    aget v5, v1, v3

    .line 145
    .line 146
    int-to-float v5, v5

    .line 147
    aget v1, v1, v4

    .line 148
    .line 149
    int-to-float v1, v1

    .line 150
    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V:[I

    .line 154
    .line 155
    aget v5, v1, v3

    .line 156
    .line 157
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 158
    .line 159
    aget v7, v6, v3

    .line 160
    .line 161
    add-int/2addr v5, v7

    .line 162
    aput v5, v1, v3

    .line 163
    .line 164
    aget v5, v1, v4

    .line 165
    .line 166
    aget v6, v6, v4

    .line 167
    .line 168
    add-int/2addr v5, v6

    .line 169
    aput v5, v1, v4

    .line 170
    .line 171
    :cond_4
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c0:Z

    .line 172
    .line 173
    if-nez v1, :cond_6

    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:I

    .line 180
    .line 181
    if-le v1, v5, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_5

    .line 188
    .line 189
    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 190
    .line 191
    .line 192
    :cond_5
    iput-boolean v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c0:Z

    .line 193
    .line 194
    if-lez v2, :cond_7

    .line 195
    .line 196
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:I

    .line 197
    .line 198
    sub-int/2addr v2, v1

    .line 199
    :cond_6
    :goto_0
    move v9, v2

    .line 200
    goto :goto_1

    .line 201
    :cond_7
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:I

    .line 202
    .line 203
    add-int/2addr v2, v1

    .line 204
    goto :goto_0

    .line 205
    :goto_1
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c0:Z

    .line 206
    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 210
    .line 211
    aget v1, v10, v4

    .line 212
    .line 213
    sub-int/2addr p1, v1

    .line 214
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v6, 0x0

    .line 219
    move-object v5, p0

    .line 220
    invoke-virtual/range {v5 .. v10}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_a

    .line 225
    .line 226
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a0:I

    .line 227
    .line 228
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 229
    .line 230
    aget v2, v1, v3

    .line 231
    .line 232
    sub-int/2addr p1, v2

    .line 233
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a0:I

    .line 234
    .line 235
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 236
    .line 237
    aget v1, v1, v4

    .line 238
    .line 239
    sub-int/2addr p1, v1

    .line 240
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 241
    .line 242
    int-to-float p1, v2

    .line 243
    int-to-float v1, v1

    .line 244
    invoke-virtual {v0, p1, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V:[I

    .line 248
    .line 249
    aget v1, p1, v3

    .line 250
    .line 251
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->T:[I

    .line 252
    .line 253
    aget v5, v2, v3

    .line 254
    .line 255
    add-int/2addr v1, v5

    .line 256
    aput v1, p1, v3

    .line 257
    .line 258
    aget v1, p1, v4

    .line 259
    .line 260
    aget v2, v2, v4

    .line 261
    .line 262
    add-int/2addr v1, v2

    .line 263
    aput v1, p1, v4

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_8
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->stopNestedScroll()V

    .line 267
    .line 268
    .line 269
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c0:Z

    .line 270
    .line 271
    const/4 p1, -0x1

    .line 272
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->W:I

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    float-to-int v1, v1

    .line 286
    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a0:I

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    float-to-int p1, p1

    .line 293
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b0:I

    .line 294
    .line 295
    invoke-virtual {p0, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->startNestedScroll(I)Z

    .line 296
    .line 297
    .line 298
    :cond_a
    :goto_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 299
    .line 300
    .line 301
    return v4
.end method

.method private D()V
    .locals 1

    .line 1
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lcc/d;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lec/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcc/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcc/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:Lcc/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic p(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static setDefaultFooter(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setDefaultHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic t(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcc/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private x()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-class v1, Landroid/content/Context;

    .line 49
    .line 50
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcc/a;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcc/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "setDefaultFooter classname="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "TwinklingRefreshLayout:"

    .line 99
    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcc/a;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcc/a;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    :goto_0
    return-void
.end method

.method private y()V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x1

    .line 14
    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget v4, Lcc/h;->b:I

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v5, -0x2

    .line 39
    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-class v1, Landroid/content/Context;

    .line 71
    .line 72
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcc/b;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcc/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "setDefaultHeader classname="

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "TwinklingRefreshLayout:"

    .line 121
    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcc/b;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcc/b;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    :goto_0
    return-void
.end method

.method private z(Landroid/view/MotionEvent;Lcc/d;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    move v4, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v2

    .line 30
    :goto_0
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v5, -0x1

    .line 38
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    move v8, v2

    .line 44
    move v9, v7

    .line 45
    move v10, v9

    .line 46
    :goto_2
    if-ge v8, v6, :cond_4

    .line 47
    .line 48
    if-ne v5, v8, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    add-float/2addr v9, v11

    .line 56
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    add-float/2addr v10, v11

    .line 61
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    if-eqz v4, :cond_5

    .line 65
    .line 66
    add-int/lit8 v4, v6, -0x1

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v4, v6

    .line 70
    :goto_4
    int-to-float v4, v4

    .line 71
    div-float/2addr v9, v4

    .line 72
    div-float/2addr v10, v4

    .line 73
    if-eqz v0, :cond_11

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/16 v5, 0x3e8

    .line 77
    .line 78
    if-eq v0, v3, :cond_e

    .line 79
    .line 80
    const/4 v3, 0x2

    .line 81
    if-eq v0, v3, :cond_b

    .line 82
    .line 83
    const/4 p2, 0x3

    .line 84
    if-eq v0, p2, :cond_a

    .line 85
    .line 86
    const/4 p2, 0x5

    .line 87
    if-eq v0, p2, :cond_9

    .line 88
    .line 89
    if-eq v0, v1, :cond_6

    .line 90
    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_6
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 94
    .line 95
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    .line 96
    .line 97
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 98
    .line 99
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 100
    .line 101
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 102
    .line 103
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:I

    .line 104
    .line 105
    int-to-float v0, v0

    .line 106
    invoke-virtual {p2, v5, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    :goto_5
    if-ge v2, v6, :cond_13

    .line 130
    .line 131
    if-ne v2, p2, :cond_7

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 139
    .line 140
    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    mul-float/2addr v4, v1

    .line 145
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 146
    .line 147
    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    mul-float/2addr v3, v0

    .line 152
    add-float/2addr v4, v3

    .line 153
    cmpg-float v3, v4, v7

    .line 154
    .line 155
    if-gez v3, :cond_8

    .line 156
    .line 157
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_9
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 168
    .line 169
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    .line 170
    .line 171
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 172
    .line 173
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 174
    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :cond_a
    iput-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Z

    .line 178
    .line 179
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 180
    .line 181
    if-eqz p1, :cond_13

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 184
    .line 185
    .line 186
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :cond_b
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 191
    .line 192
    sub-float/2addr v0, v9

    .line 193
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 194
    .line 195
    sub-float/2addr v1, v10

    .line 196
    iget-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Z

    .line 197
    .line 198
    if-eqz v3, :cond_c

    .line 199
    .line 200
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    .line 201
    .line 202
    sub-float v3, v9, v3

    .line 203
    .line 204
    float-to-int v3, v3

    .line 205
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 206
    .line 207
    sub-float v4, v10, v4

    .line 208
    .line 209
    float-to-int v4, v4

    .line 210
    mul-int/2addr v3, v3

    .line 211
    mul-int/2addr v4, v4

    .line 212
    add-int/2addr v3, v4

    .line 213
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->S:I

    .line 214
    .line 215
    if-le v3, v4, :cond_13

    .line 216
    .line 217
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:Landroid/view/MotionEvent;

    .line 218
    .line 219
    invoke-interface {p2, v3, p1, v0, v1}, Lcc/d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 220
    .line 221
    .line 222
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 223
    .line 224
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 225
    .line 226
    iput-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Z

    .line 227
    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    const/high16 v3, 0x3f800000    # 1.0f

    .line 235
    .line 236
    cmpl-float v2, v2, v3

    .line 237
    .line 238
    if-gez v2, :cond_d

    .line 239
    .line 240
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    cmpl-float v2, v2, v3

    .line 245
    .line 246
    if-ltz v2, :cond_13

    .line 247
    .line 248
    :cond_d
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:Landroid/view/MotionEvent;

    .line 249
    .line 250
    invoke-interface {p2, v2, p1, v0, v1}, Lcc/d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 251
    .line 252
    .line 253
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 254
    .line 255
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 263
    .line 264
    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:I

    .line 265
    .line 266
    int-to-float v6, v6

    .line 267
    invoke-virtual {v1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 268
    .line 269
    .line 270
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 277
    .line 278
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:F

    .line 285
    .line 286
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 287
    .line 288
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    .line 293
    .line 294
    int-to-float v1, v1

    .line 295
    cmpl-float v0, v0, v1

    .line 296
    .line 297
    if-gtz v0, :cond_f

    .line 298
    .line 299
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:F

    .line 300
    .line 301
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    .line 306
    .line 307
    int-to-float v1, v1

    .line 308
    cmpl-float v0, v0, v1

    .line 309
    .line 310
    if-lez v0, :cond_10

    .line 311
    .line 312
    :cond_f
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:Landroid/view/MotionEvent;

    .line 313
    .line 314
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:F

    .line 315
    .line 316
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 317
    .line 318
    invoke-interface {p2, v0, p1, v1, v2}, Lcc/d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 319
    .line 320
    .line 321
    move v2, v3

    .line 322
    :cond_10
    invoke-interface {p2, p1, v2}, Lcc/d;->a(Landroid/view/MotionEvent;Z)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 326
    .line 327
    if-eqz p1, :cond_13

    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 330
    .line 331
    .line 332
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:Landroid/view/VelocityTracker;

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_11
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:F

    .line 336
    .line 337
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    .line 338
    .line 339
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 340
    .line 341
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 342
    .line 343
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:Landroid/view/MotionEvent;

    .line 344
    .line 345
    if-eqz v0, :cond_12

    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 348
    .line 349
    .line 350
    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:Landroid/view/MotionEvent;

    .line 355
    .line 356
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Z

    .line 357
    .line 358
    invoke-interface {p2, p1}, Lcc/d;->onDown(Landroid/view/MotionEvent;)V

    .line 359
    .line 360
    .line 361
    :cond_13
    :goto_7
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->j0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/k;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcc/b;->a(FF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcc/k;->b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public c(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 6
    .line 7
    invoke-interface {v0, p2, v1, v2}, Lcc/b;->b(FFF)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcc/k;->c(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public d(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcc/a;->a(FF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcc/k;->d(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lec/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lcc/d;

    .line 8
    .line 9
    invoke-direct {p0, p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z(Landroid/view/MotionEvent;Lcc/d;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/k;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lcc/a;->onFinish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public f(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 6
    .line 7
    invoke-interface {v0, p2, v1, v2}, Lcc/a;->c(FFF)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcc/k;->f(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public g(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 6
    .line 7
    invoke-interface {v0, p2, v1, v2}, Lcc/a;->b(FFF)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcc/k;->g(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public getExtraHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 4
    .line 5
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 6
    .line 7
    invoke-interface {v0, p2, v1, v2}, Lcc/b;->d(FFF)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcc/k;->h(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/k;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 26
    .line 27
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$c;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$c;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcc/b;->c(Lcc/c;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcc/k;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lec/d;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 19
    .line 20
    new-instance v2, Lec/e;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lec/e;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lec/d;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lec/c;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lec/c;->c(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lec/c;->e(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public setAutoLoadMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setBottomHeight(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 11
    .line 12
    return-void
.end method

.method public setBottomView(Lcc/a;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-interface {p1}, Lcc/a;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setDecorator(Lec/c;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Lec/c;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setEnableKeepIView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableLoadmore(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lcc/a;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcc/a;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcc/a;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableRefresh(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcc/b;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcc/b;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public setFloatRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 11
    .line 12
    return-void
.end method

.method public setHeaderView(Lcc/b;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-interface {p1}, Lcc/b;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lcc/b;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setMaxBottomHeight(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    .line 11
    .line 12
    return-void
.end method

.method public setMaxHeadHeight(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 11
    .line 12
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnRefreshListener(Lcc/k;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d0:Lcc/k;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setOverScrollBottomShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOverScrollHeight(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 11
    .line 12
    return-void
.end method

.method public setOverScrollRefreshShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 4
    .line 5
    return-void
.end method

.method public setOverScrollTopShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPureScrollModeOn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxBottomHeight(F)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomHeight(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
