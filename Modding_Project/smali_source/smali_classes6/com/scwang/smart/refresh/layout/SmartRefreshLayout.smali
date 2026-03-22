.class public Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lsc/f;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;,
        Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;,
        Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$j;,
        Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;
    }
.end annotation


# static fields
.field protected static Q0:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field protected A:[I

.field protected A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field protected B:Z

.field protected B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field protected C:Z

.field protected C0:J

.field protected D:Z

.field protected D0:I

.field protected E:Z

.field protected E0:I

.field protected F:Z

.field protected F0:Z

.field protected G:Z

.field protected G0:Z

.field protected H:Z

.field protected H0:Z

.field protected I:Z

.field protected I0:Z

.field protected J:Z

.field protected J0:J

.field protected K:Z

.field protected K0:F

.field protected L:Z

.field protected L0:F

.field protected M:Z

.field protected M0:Z

.field protected N:Z

.field protected N0:Landroid/view/MotionEvent;

.field protected O:Z

.field protected O0:Ljava/lang/Runnable;

.field protected P:Z

.field protected P0:Landroid/animation/ValueAnimator;

.field protected Q:Z

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field protected U:Z

.field protected V:Z

.field protected W:Z

.field protected a:I

.field protected a0:Z

.field protected b:I

.field protected b0:Lvc/f;

.field protected c:I

.field protected c0:Lvc/e;

.field protected d:I

.field protected d0:Lvc/i;

.field protected e:I

.field protected e0:I

.field protected f:I

.field protected f0:Z

.field protected g:I

.field protected g0:[I

.field protected h:F

.field protected h0:Landroidx/core/view/NestedScrollingChildHelper;

.field protected i:F

.field protected i0:Landroidx/core/view/NestedScrollingParentHelper;

.field protected j:F

.field protected j0:I

.field protected k:F

.field protected k0:Ltc/a;

.field protected l:F

.field protected l0:I

.field protected m:C

.field protected m0:Ltc/a;

.field protected n:Z

.field protected n0:I

.field protected o:Z

.field protected o0:I

.field protected p:Z

.field protected p0:F

.field protected q:I

.field protected q0:F

.field protected r:I

.field protected r0:F

.field protected s:I

.field protected s0:F

.field protected t:I

.field protected t0:F

.field protected u:I

.field protected u0:Lsc/a;

.field protected v:I

.field protected v0:Lsc/a;

.field protected w:I

.field protected w0:Lsc/b;

.field protected x:Landroid/widget/Scroller;

.field protected x0:Landroid/graphics/Paint;

.field protected y:Landroid/view/VelocityTracker;

.field protected y0:Landroid/os/Handler;

.field protected z:Landroid/view/animation/Interpolator;

.field protected z0:Lsc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e:I

    .line 4
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    const/16 v0, 0x6e

    .line 6
    iput-char v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q:I

    .line 8
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r:I

    .line 9
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s:I

    .line 10
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 13
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D:Z

    .line 14
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E:Z

    .line 15
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 16
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 17
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 18
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    .line 19
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    .line 20
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 21
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 22
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    .line 23
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N:Z

    .line 24
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O:Z

    .line 25
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 26
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q:Z

    .line 27
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->R:Z

    .line 28
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->S:Z

    .line 29
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 30
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 31
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 32
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->W:Z

    .line 33
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a0:Z

    const/4 v2, 0x2

    .line 34
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g0:[I

    .line 35
    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 36
    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 37
    sget-object v2, Ltc/a;->c:Ltc/a;

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 38
    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    const/high16 v2, 0x40200000    # 2.5f

    .line 39
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 40
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r0:F

    .line 42
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s0:F

    const v2, 0x3e2aaaab

    .line 43
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t0:F

    .line 44
    new-instance v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;

    invoke-direct {v2, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$k;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 45
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 46
    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const-wide/16 v2, 0x0

    .line 47
    iput-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C0:J

    .line 48
    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D0:I

    .line 49
    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E0:I

    .line 50
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 51
    iput-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J0:J

    const/4 v2, 0x0

    .line 52
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K0:F

    .line 53
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L0:F

    .line 54
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M0:Z

    const/4 v2, 0x0

    .line 55
    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 57
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 58
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 59
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 61
    new-instance v3, Lxc/b;

    sget v4, Lxc/b;->b:I

    invoke-direct {v3, v4}, Lxc/b;-><init>(I)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    .line 62
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 63
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u:I

    .line 64
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v:I

    const/high16 v2, 0x42700000    # 60.0f

    .line 65
    invoke-static {v2}, Lxc/b;->c(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 66
    invoke-static {v2}, Lxc/b;->c(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 67
    sget-object v2, Luc/c;->e0:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Luc/c;->g0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 69
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 70
    :cond_0
    sget p2, Luc/c;->f0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 71
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 72
    :cond_1
    sget p2, Luc/c;->k0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    .line 73
    sget p2, Luc/c;->L0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 74
    sget p2, Luc/c;->G0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 75
    sget p2, Luc/c;->N0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r0:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r0:F

    .line 76
    sget p2, Luc/c;->I0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s0:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s0:F

    .line 77
    sget p2, Luc/c;->z0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 78
    sget p2, Luc/c;->P0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    .line 79
    sget p2, Luc/c;->s0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 80
    sget p2, Luc/c;->J0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 81
    sget p2, Luc/c;->E0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 82
    sget p2, Luc/c;->K0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n0:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n0:I

    .line 83
    sget p2, Luc/c;->F0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o0:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o0:I

    .line 84
    sget p2, Luc/c;->j0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->R:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->R:Z

    .line 85
    sget p2, Luc/c;->i0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->S:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->S:Z

    .line 86
    sget p2, Luc/c;->r0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 87
    sget p2, Luc/c;->q0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 88
    sget p2, Luc/c;->x0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    .line 89
    sget p2, Luc/c;->l0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 90
    sget p2, Luc/c;->v0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    .line 91
    sget p2, Luc/c;->y0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    .line 92
    sget p2, Luc/c;->A0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N:Z

    .line 93
    sget p2, Luc/c;->B0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O:Z

    .line 94
    sget p2, Luc/c;->t0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 95
    sget p2, Luc/c;->o0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 96
    sget v2, Luc/c;->p0:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 97
    sget p2, Luc/c;->n0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D:Z

    .line 98
    sget p2, Luc/c;->m0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E:Z

    .line 99
    sget p2, Luc/c;->w0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 100
    sget p2, Luc/c;->D0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q:I

    .line 101
    sget p2, Luc/c;->C0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r:I

    .line 102
    sget p2, Luc/c;->M0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s:I

    .line 103
    sget p2, Luc/c;->H0:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t:I

    .line 104
    sget p2, Luc/c;->u0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q:Z

    .line 105
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v2, p2}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 106
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    if-nez p2, :cond_3

    sget p2, Luc/c;->s0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 107
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->W:Z

    if-nez p2, :cond_5

    sget p2, Luc/c;->r0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->W:Z

    .line 108
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a0:Z

    if-nez p2, :cond_7

    sget p2, Luc/c;->q0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move p2, v1

    goto :goto_5

    :cond_7
    :goto_4
    move p2, v0

    :goto_5
    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a0:Z

    .line 109
    sget p2, Luc/c;->J0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Ltc/a;->i:Ltc/a;

    goto :goto_6

    :cond_8
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    :goto_6
    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 110
    sget p2, Luc/c;->E0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Ltc/a;->i:Ltc/a;

    goto :goto_7

    :cond_9
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    :goto_7
    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 111
    sget p2, Luc/c;->h0:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 112
    sget v2, Luc/c;->O0:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_a

    .line 113
    filled-new-array {v2, p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A:[I

    goto :goto_8

    .line 114
    :cond_a
    filled-new-array {v2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A:[I

    goto :goto_8

    :cond_b
    if-eqz p2, :cond_c

    .line 115
    filled-new-array {v1, p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A:[I

    .line 116
    :cond_c
    :goto_8
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    if-nez p2, :cond_d

    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    if-nez p2, :cond_d

    .line 117
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 118
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic d(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic g(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic i(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lvc/b;)V
    .locals 0
    .param p0    # Lvc/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lvc/c;)V
    .locals 0
    .param p0    # Lvc/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static setDefaultRefreshInitializer(Lvc/d;)V
    .locals 0
    .param p0    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method


# virtual methods
.method public A(Z)Lsc/f;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public B(Z)Lsc/f;
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lsc/b;->b(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public C(Z)Lsc/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public D(Z)Lsc/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public E(Z)Lsc/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q()Lsc/f;

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n()Lsc/f;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 25
    .line 26
    if-eq v0, p1, :cond_3

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 31
    .line 32
    instance-of v1, v0, Lsc/c;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    check-cast v0, Lsc/c;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lsc/c;->b(Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 56
    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 60
    .line 61
    invoke-interface {p1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Ltc/b;->d:Ltc/b;

    .line 66
    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 78
    .line 79
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 88
    .line 89
    invoke-interface {p1}, Lsc/a;->getView()Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 94
    .line 95
    int-to-float v0, v0

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "Footer:"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_0
    return-object p0
.end method

.method public F(Lvc/g;)Lsc/f;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b0:Lvc/f;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c0:Lvc/e;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
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
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 20
    .line 21
    return-object p0
.end method

.method public G(Landroid/view/View;)Lsc/f;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H(Landroid/view/View;II)Lsc/f;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public H(Landroid/view/View;II)Lsc/f;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    move p2, v0

    .line 16
    :cond_1
    if-nez p3, :cond_2

    .line 17
    .line 18
    move p3, v0

    .line 19
    :cond_2
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    .line 20
    .line 21
    invoke-direct {v0, p2, p3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    instance-of p3, p2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    .line 29
    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    move-object v0, p2

    .line 33
    check-cast v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lyc/a;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lyc/a;-><init>(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H0:Z

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r:I

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d0:Lvc/i;

    .line 68
    .line 69
    invoke-interface {p3, v0}, Lsc/b;->g(Lvc/i;)V

    .line 70
    .line 71
    .line 72
    iget-object p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 75
    .line 76
    invoke-interface {p3, v0}, Lsc/b;->b(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 82
    .line 83
    invoke-interface {p3, v0, p1, p2}, Lsc/b;->f(Lsc/e;Landroid/view/View;Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-interface {p1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-boolean p1, p1, Ltc/b;->b:Z

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 99
    .line 100
    invoke-interface {p1}, Lsc/a;->getView()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-interface {p1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-boolean p1, p1, Ltc/b;->b:Z

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 120
    .line 121
    invoke-interface {p1}, Lsc/a;->getView()Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    return-object p0
.end method

.method public I(Lvc/i;)Lsc/f;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d0:Lvc/i;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lsc/b;->g(Lvc/i;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method protected J(F)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w:I

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    cmpl-float v1, v1, v2

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-lez v1, :cond_9

    .line 20
    .line 21
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 22
    .line 23
    int-to-float v3, v1

    .line 24
    mul-float/2addr v3, p1

    .line 25
    cmpg-float v3, v3, v0

    .line 26
    .line 27
    if-gez v3, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 30
    .line 31
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v3, v4, :cond_2

    .line 35
    .line 36
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 37
    .line 38
    if-eq v3, v4, :cond_2

    .line 39
    .line 40
    if-gez v1, :cond_1

    .line 41
    .line 42
    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    return v5

    .line 52
    :cond_2
    :goto_0
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$j;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$j;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;F)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$j;->a()Ljava/lang/Runnable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 62
    .line 63
    return v5

    .line 64
    :cond_3
    cmpg-float v3, p1, v0

    .line 65
    .line 66
    if-gez v3, :cond_6

    .line 67
    .line 68
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 73
    .line 74
    if-nez v3, :cond_8

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 77
    .line 78
    if-nez v3, :cond_8

    .line 79
    .line 80
    :cond_4
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 81
    .line 82
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 83
    .line 84
    if-ne v3, v4, :cond_5

    .line 85
    .line 86
    if-gez v1, :cond_8

    .line 87
    .line 88
    :cond_5
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_8

    .line 99
    .line 100
    :cond_6
    cmpl-float v0, p1, v0

    .line 101
    .line 102
    if-lez v0, :cond_9

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 109
    .line 110
    if-nez v0, :cond_8

    .line 111
    .line 112
    :cond_7
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 113
    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 117
    .line 118
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 119
    .line 120
    if-ne v0, v1, :cond_9

    .line 121
    .line 122
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 123
    .line 124
    if-gtz v0, :cond_9

    .line 125
    .line 126
    :cond_8
    iput-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M0:Z

    .line 127
    .line 128
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 129
    .line 130
    neg-float p1, p1

    .line 131
    float-to-int v7, p1

    .line 132
    const v10, -0x7fffffff

    .line 133
    .line 134
    .line 135
    const v11, 0x7fffffff

    .line 136
    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v9, 0x0

    .line 143
    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    .line 153
    .line 154
    :cond_9
    return v2
.end method

.method public a(Z)Lsc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 32
    .line 33
    invoke-interface {v2}, Lsc/b;->i()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    :cond_1
    if-lez v0, :cond_6

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 46
    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    :cond_2
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 50
    .line 51
    invoke-interface {v2}, Lsc/b;->e()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_6

    .line 56
    .line 57
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M0:Z

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    if-lez v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    neg-float v0, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k(F)V

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M0:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 89
    .line 90
    .line 91
    :cond_7
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    if-ne v6, v2, :cond_0

    .line 13
    .line 14
    move v3, v11

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v10

    .line 17
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v4, -0x1

    .line 25
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, 0x0

    .line 30
    move v9, v7

    .line 31
    move v12, v9

    .line 32
    move v8, v10

    .line 33
    :goto_2
    if-ge v8, v5, :cond_3

    .line 34
    .line 35
    if-ne v4, v8, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    add-float/2addr v9, v13

    .line 43
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    add-float/2addr v12, v13

    .line 48
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-eqz v3, :cond_4

    .line 52
    .line 53
    add-int/lit8 v5, v5, -0x1

    .line 54
    .line 55
    :cond_4
    int-to-float v3, v5

    .line 56
    div-float/2addr v9, v3

    .line 57
    div-float v8, v12, v3

    .line 58
    .line 59
    if-eq v6, v2, :cond_5

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    if-ne v6, v2, :cond_6

    .line 63
    .line 64
    :cond_5
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 65
    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 69
    .line 70
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 71
    .line 72
    sub-float v3, v8, v3

    .line 73
    .line 74
    add-float/2addr v2, v3

    .line 75
    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 76
    .line 77
    :cond_6
    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 78
    .line 79
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 80
    .line 81
    if-nez v6, :cond_7

    .line 82
    .line 83
    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K0:F

    .line 84
    .line 85
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L0:F

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    iput-wide v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J0:J

    .line 92
    .line 93
    :cond_7
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 94
    .line 95
    const/4 v3, 0x2

    .line 96
    if-eqz v2, :cond_b

    .line 97
    .line 98
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 99
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ne v6, v3, :cond_a

    .line 105
    .line 106
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 107
    .line 108
    if-ne v2, v3, :cond_a

    .line 109
    .line 110
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 111
    .line 112
    float-to-int v2, v2

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 118
    .line 119
    if-nez v3, :cond_8

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    move v11, v3

    .line 123
    :goto_4
    int-to-float v5, v11

    .line 124
    div-float/2addr v4, v5

    .line 125
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_9

    .line 132
    .line 133
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 134
    .line 135
    if-lez v5, :cond_9

    .line 136
    .line 137
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 138
    .line 139
    if-eqz v5, :cond_9

    .line 140
    .line 141
    invoke-interface {v5}, Lsc/a;->f()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_9

    .line 146
    .line 147
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 148
    .line 149
    invoke-interface {v5, v4, v2, v3}, Lsc/a;->e(FII)V

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_a

    .line 160
    .line 161
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 162
    .line 163
    if-gez v5, :cond_a

    .line 164
    .line 165
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 166
    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    invoke-interface {v5}, Lsc/a;->f()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_a

    .line 174
    .line 175
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 176
    .line 177
    invoke-interface {v5, v4, v2, v3}, Lsc/a;->e(FII)V

    .line 178
    .line 179
    .line 180
    :cond_a
    :goto_5
    return v1

    .line 181
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_3a

    .line 186
    .line 187
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 188
    .line 189
    if-nez v2, :cond_c

    .line 190
    .line 191
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 192
    .line 193
    if-nez v2, :cond_c

    .line 194
    .line 195
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 196
    .line 197
    if-eqz v2, :cond_3a

    .line 198
    .line 199
    :cond_c
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F0:Z

    .line 200
    .line 201
    if-eqz v2, :cond_e

    .line 202
    .line 203
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 204
    .line 205
    iget-boolean v4, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 206
    .line 207
    if-nez v4, :cond_d

    .line 208
    .line 209
    iget-boolean v4, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 210
    .line 211
    if-eqz v4, :cond_e

    .line 212
    .line 213
    :cond_d
    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 214
    .line 215
    if-nez v2, :cond_3a

    .line 216
    .line 217
    :cond_e
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G0:Z

    .line 218
    .line 219
    if-eqz v2, :cond_10

    .line 220
    .line 221
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 222
    .line 223
    iget-boolean v4, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 224
    .line 225
    if-nez v4, :cond_f

    .line 226
    .line 227
    iget-boolean v4, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 228
    .line 229
    if-eqz v4, :cond_10

    .line 230
    .line 231
    :cond_f
    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    .line 232
    .line 233
    if-eqz v2, :cond_10

    .line 234
    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :cond_10
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 238
    .line 239
    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 240
    .line 241
    if-eqz v2, :cond_12

    .line 242
    .line 243
    if-ne v6, v11, :cond_11

    .line 244
    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    iget-wide v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J0:J

    .line 250
    .line 251
    sub-long/2addr v2, v4

    .line 252
    const-wide/16 v4, 0x1f4

    .line 253
    .line 254
    cmp-long v2, v2, v4

    .line 255
    .line 256
    if-gez v2, :cond_11

    .line 257
    .line 258
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K0:F

    .line 259
    .line 260
    sub-float/2addr v9, v2

    .line 261
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L0:F

    .line 262
    .line 263
    sub-float/2addr v8, v2

    .line 264
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    cmpg-float v2, v2, v3

    .line 272
    .line 273
    if-gez v2, :cond_11

    .line 274
    .line 275
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 280
    .line 281
    int-to-float v3, v3

    .line 282
    cmpg-float v2, v2, v3

    .line 283
    .line 284
    if-gez v2, :cond_11

    .line 285
    .line 286
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 287
    .line 288
    .line 289
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 293
    .line 294
    .line 295
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    return v1

    .line 300
    :cond_11
    return v11

    .line 301
    :cond_12
    invoke-virtual {v0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r(I)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-nez v2, :cond_39

    .line 306
    .line 307
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 308
    .line 309
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 310
    .line 311
    if-ne v2, v4, :cond_13

    .line 312
    .line 313
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->S:Z

    .line 314
    .line 315
    if-nez v5, :cond_39

    .line 316
    .line 317
    :cond_13
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 318
    .line 319
    if-ne v2, v5, :cond_14

    .line 320
    .line 321
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->R:Z

    .line 322
    .line 323
    if-eqz v2, :cond_14

    .line 324
    .line 325
    goto/16 :goto_d

    .line 326
    .line 327
    :cond_14
    const/16 v2, 0x68

    .line 328
    .line 329
    if-eqz v6, :cond_36

    .line 330
    .line 331
    const/4 v5, 0x0

    .line 332
    if-eq v6, v11, :cond_32

    .line 333
    .line 334
    const/4 v12, 0x3

    .line 335
    if-eq v6, v3, :cond_15

    .line 336
    .line 337
    if-eq v6, v12, :cond_33

    .line 338
    .line 339
    goto/16 :goto_c

    .line 340
    .line 341
    :cond_15
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h:F

    .line 342
    .line 343
    sub-float/2addr v9, v3

    .line 344
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 345
    .line 346
    sub-float v3, v8, v3

    .line 347
    .line 348
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 349
    .line 350
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 351
    .line 352
    .line 353
    iget-boolean v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 354
    .line 355
    if-nez v6, :cond_22

    .line 356
    .line 357
    iget-boolean v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p:Z

    .line 358
    .line 359
    if-nez v6, :cond_22

    .line 360
    .line 361
    iget-char v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 362
    .line 363
    if-eq v6, v2, :cond_22

    .line 364
    .line 365
    iget-object v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 366
    .line 367
    if-eqz v13, :cond_22

    .line 368
    .line 369
    const/16 v13, 0x76

    .line 370
    .line 371
    if-eq v6, v13, :cond_17

    .line 372
    .line 373
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    iget v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 378
    .line 379
    int-to-float v14, v14

    .line 380
    cmpl-float v6, v6, v14

    .line 381
    .line 382
    if-ltz v6, :cond_16

    .line 383
    .line 384
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    cmpg-float v6, v6, v14

    .line 393
    .line 394
    if-gez v6, :cond_16

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_16
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 402
    .line 403
    int-to-float v6, v6

    .line 404
    cmpl-float v4, v4, v6

    .line 405
    .line 406
    if-ltz v4, :cond_22

    .line 407
    .line 408
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    cmpl-float v4, v4, v6

    .line 417
    .line 418
    if-lez v4, :cond_22

    .line 419
    .line 420
    iget-char v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 421
    .line 422
    if-eq v4, v13, :cond_22

    .line 423
    .line 424
    iput-char v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 425
    .line 426
    goto/16 :goto_a

    .line 427
    .line 428
    :cond_17
    :goto_6
    iput-char v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 429
    .line 430
    cmpl-float v2, v3, v7

    .line 431
    .line 432
    if-lez v2, :cond_1a

    .line 433
    .line 434
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 435
    .line 436
    if-ltz v2, :cond_19

    .line 437
    .line 438
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 439
    .line 440
    if-nez v2, :cond_18

    .line 441
    .line 442
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 443
    .line 444
    if-eqz v2, :cond_1a

    .line 445
    .line 446
    :cond_18
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 447
    .line 448
    invoke-interface {v2}, Lsc/b;->i()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_1a

    .line 453
    .line 454
    :cond_19
    iput-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 455
    .line 456
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 457
    .line 458
    int-to-float v2, v2

    .line 459
    sub-float v2, v8, v2

    .line 460
    .line 461
    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_1a
    cmpg-float v2, v3, v7

    .line 465
    .line 466
    if-gez v2, :cond_1e

    .line 467
    .line 468
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 469
    .line 470
    if-gtz v2, :cond_1d

    .line 471
    .line 472
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 473
    .line 474
    if-nez v2, :cond_1b

    .line 475
    .line 476
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 477
    .line 478
    if-eqz v2, :cond_1e

    .line 479
    .line 480
    :cond_1b
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 481
    .line 482
    if-ne v2, v4, :cond_1c

    .line 483
    .line 484
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 485
    .line 486
    if-nez v2, :cond_1d

    .line 487
    .line 488
    :cond_1c
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 489
    .line 490
    invoke-interface {v2}, Lsc/b;->e()Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_1e

    .line 495
    .line 496
    :cond_1d
    iput-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 497
    .line 498
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 499
    .line 500
    int-to-float v2, v2

    .line 501
    add-float/2addr v2, v8

    .line 502
    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 503
    .line 504
    :cond_1e
    :goto_7
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 505
    .line 506
    if-eqz v2, :cond_22

    .line 507
    .line 508
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 509
    .line 510
    sub-float v3, v8, v2

    .line 511
    .line 512
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o:Z

    .line 513
    .line 514
    if-eqz v2, :cond_1f

    .line 515
    .line 516
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 517
    .line 518
    .line 519
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    .line 521
    .line 522
    :cond_1f
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 523
    .line 524
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 525
    .line 526
    if-gtz v4, :cond_21

    .line 527
    .line 528
    if-nez v4, :cond_20

    .line 529
    .line 530
    cmpl-float v4, v3, v7

    .line 531
    .line 532
    if-lez v4, :cond_20

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_20
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_21
    :goto_8
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 539
    .line 540
    :goto_9
    invoke-interface {v2, v4}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 541
    .line 542
    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    instance-of v4, v2, Landroid/view/ViewGroup;

    .line 548
    .line 549
    if-eqz v4, :cond_22

    .line 550
    .line 551
    check-cast v2, Landroid/view/ViewGroup;

    .line 552
    .line 553
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 554
    .line 555
    .line 556
    :cond_22
    :goto_a
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 557
    .line 558
    if-eqz v2, :cond_31

    .line 559
    .line 560
    float-to-int v2, v3

    .line 561
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 562
    .line 563
    add-int/2addr v2, v4

    .line 564
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 565
    .line 566
    iget-boolean v6, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 567
    .line 568
    if-eqz v6, :cond_23

    .line 569
    .line 570
    if-ltz v2, :cond_24

    .line 571
    .line 572
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c:I

    .line 573
    .line 574
    if-ltz v6, :cond_24

    .line 575
    .line 576
    :cond_23
    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    .line 577
    .line 578
    if-eqz v4, :cond_30

    .line 579
    .line 580
    if-gtz v2, :cond_24

    .line 581
    .line 582
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c:I

    .line 583
    .line 584
    if-lez v4, :cond_30

    .line 585
    .line 586
    :cond_24
    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c:I

    .line 587
    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 589
    .line 590
    .line 591
    move-result-wide v21

    .line 592
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 593
    .line 594
    if-nez v1, :cond_25

    .line 595
    .line 596
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h:F

    .line 597
    .line 598
    add-float v18, v1, v9

    .line 599
    .line 600
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 601
    .line 602
    const/16 v20, 0x0

    .line 603
    .line 604
    const/16 v17, 0x0

    .line 605
    .line 606
    move-wide/from16 v13, v21

    .line 607
    .line 608
    move-wide/from16 v15, v21

    .line 609
    .line 610
    move/from16 v19, v1

    .line 611
    .line 612
    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 617
    .line 618
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 619
    .line 620
    .line 621
    :cond_25
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h:F

    .line 622
    .line 623
    add-float v18, v1, v9

    .line 624
    .line 625
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 626
    .line 627
    int-to-float v4, v2

    .line 628
    add-float v19, v1, v4

    .line 629
    .line 630
    const/16 v20, 0x0

    .line 631
    .line 632
    const/16 v17, 0x2

    .line 633
    .line 634
    move-wide/from16 v13, v21

    .line 635
    .line 636
    move-wide/from16 v15, v21

    .line 637
    .line 638
    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 643
    .line 644
    .line 645
    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 646
    .line 647
    if-eqz v4, :cond_26

    .line 648
    .line 649
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 650
    .line 651
    int-to-float v4, v4

    .line 652
    cmpl-float v3, v3, v4

    .line 653
    .line 654
    if-lez v3, :cond_26

    .line 655
    .line 656
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 657
    .line 658
    if-gez v3, :cond_26

    .line 659
    .line 660
    iput-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 661
    .line 662
    :cond_26
    if-lez v2, :cond_28

    .line 663
    .line 664
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 665
    .line 666
    if-nez v3, :cond_27

    .line 667
    .line 668
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 669
    .line 670
    if-eqz v3, :cond_28

    .line 671
    .line 672
    :cond_27
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 673
    .line 674
    invoke-interface {v3}, Lsc/b;->i()Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_28

    .line 679
    .line 680
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 681
    .line 682
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 683
    .line 684
    iput v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 685
    .line 686
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 687
    .line 688
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 689
    .line 690
    invoke-interface {v2, v3}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :cond_28
    if-gez v2, :cond_2a

    .line 695
    .line 696
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 697
    .line 698
    if-nez v3, :cond_29

    .line 699
    .line 700
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 701
    .line 702
    if-eqz v3, :cond_2a

    .line 703
    .line 704
    :cond_29
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 705
    .line 706
    invoke-interface {v3}, Lsc/b;->e()Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-eqz v3, :cond_2a

    .line 711
    .line 712
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 713
    .line 714
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 715
    .line 716
    iput v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 717
    .line 718
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 719
    .line 720
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 721
    .line 722
    invoke-interface {v2, v3}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 723
    .line 724
    .line 725
    goto :goto_b

    .line 726
    :cond_2a
    move v10, v2

    .line 727
    :goto_b
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 728
    .line 729
    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 730
    .line 731
    if-eqz v3, :cond_2b

    .line 732
    .line 733
    if-ltz v10, :cond_2c

    .line 734
    .line 735
    :cond_2b
    iget-boolean v2, v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    .line 736
    .line 737
    if-eqz v2, :cond_2e

    .line 738
    .line 739
    if-lez v10, :cond_2e

    .line 740
    .line 741
    :cond_2c
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 742
    .line 743
    if-eqz v1, :cond_2d

    .line 744
    .line 745
    invoke-virtual {v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w(F)V

    .line 746
    .line 747
    .line 748
    :cond_2d
    return v11

    .line 749
    :cond_2e
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 750
    .line 751
    if-eqz v2, :cond_2f

    .line 752
    .line 753
    iput-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 754
    .line 755
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 756
    .line 757
    .line 758
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 759
    .line 760
    .line 761
    :cond_2f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 762
    .line 763
    .line 764
    move v2, v10

    .line 765
    :cond_30
    int-to-float v1, v2

    .line 766
    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w(F)V

    .line 767
    .line 768
    .line 769
    return v11

    .line 770
    :cond_31
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 771
    .line 772
    if-eqz v2, :cond_35

    .line 773
    .line 774
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 775
    .line 776
    int-to-float v2, v2

    .line 777
    cmpl-float v2, v3, v2

    .line 778
    .line 779
    if-lez v2, :cond_35

    .line 780
    .line 781
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 782
    .line 783
    if-gez v2, :cond_35

    .line 784
    .line 785
    iput-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 786
    .line 787
    goto :goto_c

    .line 788
    :cond_32
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 789
    .line 790
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 791
    .line 792
    .line 793
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 794
    .line 795
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v:I

    .line 796
    .line 797
    int-to-float v3, v3

    .line 798
    const/16 v4, 0x3e8

    .line 799
    .line 800
    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 801
    .line 802
    .line 803
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 804
    .line 805
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    float-to-int v2, v2

    .line 810
    iput v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w:I

    .line 811
    .line 812
    invoke-virtual {v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J(F)Z

    .line 813
    .line 814
    .line 815
    :cond_33
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 816
    .line 817
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 818
    .line 819
    .line 820
    const/16 v2, 0x6e

    .line 821
    .line 822
    iput-char v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 823
    .line 824
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 825
    .line 826
    if-eqz v2, :cond_34

    .line 827
    .line 828
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 829
    .line 830
    .line 831
    iput-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->N0:Landroid/view/MotionEvent;

    .line 832
    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 834
    .line 835
    .line 836
    move-result-wide v4

    .line 837
    iget v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h:F

    .line 838
    .line 839
    const/4 v9, 0x0

    .line 840
    move-wide v2, v4

    .line 841
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 849
    .line 850
    .line 851
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y()V

    .line 852
    .line 853
    .line 854
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 855
    .line 856
    if-eqz v2, :cond_35

    .line 857
    .line 858
    iput-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 859
    .line 860
    return v11

    .line 861
    :cond_35
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    return v1

    .line 866
    :cond_36
    iput v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w:I

    .line 867
    .line 868
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y:Landroid/view/VelocityTracker;

    .line 869
    .line 870
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 871
    .line 872
    .line 873
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x:Landroid/widget/Scroller;

    .line 874
    .line 875
    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 876
    .line 877
    .line 878
    iput v9, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h:F

    .line 879
    .line 880
    iput v8, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 881
    .line 882
    iput v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c:I

    .line 883
    .line 884
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 885
    .line 886
    iput v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 887
    .line 888
    iput-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 889
    .line 890
    iput-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p:Z

    .line 891
    .line 892
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    iput-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o:Z

    .line 897
    .line 898
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 899
    .line 900
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 901
    .line 902
    if-ne v3, v4, :cond_37

    .line 903
    .line 904
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 905
    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 907
    .line 908
    .line 909
    move-result v4

    .line 910
    int-to-float v4, v4

    .line 911
    const/high16 v5, 0x3f800000    # 1.0f

    .line 912
    .line 913
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t0:F

    .line 914
    .line 915
    sub-float/2addr v5, v6

    .line 916
    mul-float/2addr v4, v5

    .line 917
    cmpg-float v3, v3, v4

    .line 918
    .line 919
    if-gez v3, :cond_37

    .line 920
    .line 921
    iput-char v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m:C

    .line 922
    .line 923
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o:Z

    .line 924
    .line 925
    return v1

    .line 926
    :cond_37
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 927
    .line 928
    if-eqz v2, :cond_38

    .line 929
    .line 930
    invoke-interface {v2, v1}, Lsc/b;->a(Landroid/view/MotionEvent;)V

    .line 931
    .line 932
    .line 933
    :cond_38
    return v11

    .line 934
    :cond_39
    :goto_d
    return v10

    .line 935
    :cond_3a
    :goto_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_8

    .line 15
    .line 16
    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, p2, :cond_8

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    if-eqz v0, :cond_8

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v1, v3

    .line 53
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 54
    .line 55
    add-int/2addr v1, v3

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D0:I

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 76
    .line 77
    invoke-interface {v3}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-boolean v3, v3, Ltc/b;->c:Z

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 91
    .line 92
    invoke-interface {v3}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    sget-object v4, Ltc/b;->d:Ltc/b;

    .line 97
    .line 98
    if-ne v3, v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 105
    .line 106
    add-int/2addr v1, v3

    .line 107
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    int-to-float v6, v3

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v7, v3

    .line 117
    int-to-float v8, v1

    .line 118
    iget-object v9, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    move-object v4, p1

    .line 122
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D:Z

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 130
    .line 131
    invoke-interface {v3}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    sget-object v4, Ltc/b;->f:Ltc/b;

    .line 136
    .line 137
    if-eq v3, v4, :cond_6

    .line 138
    .line 139
    :cond_5
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 140
    .line 141
    invoke-interface {v3}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget-boolean v3, v3, Ltc/b;->c:Z

    .line 146
    .line 147
    if-eqz v3, :cond_8

    .line 148
    .line 149
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 165
    .line 166
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    .line 173
    .line 174
    return p2

    .line 175
    :cond_7
    :goto_2
    return v2

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 177
    .line 178
    if-eqz v1, :cond_10

    .line 179
    .line 180
    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-ne v1, p2, :cond_10

    .line 185
    .line 186
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_f

    .line 193
    .line 194
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    .line 195
    .line 196
    if-nez v1, :cond_9

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :cond_9
    if-eqz v0, :cond_10

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    sub-int/2addr v1, v0

    .line 217
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 218
    .line 219
    add-int/2addr v1, v0

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E0:I

    .line 229
    .line 230
    if-eqz v1, :cond_c

    .line 231
    .line 232
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 233
    .line 234
    if-eqz v2, :cond_c

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 240
    .line 241
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-boolean v1, v1, Ltc/b;->c:Z

    .line 246
    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    goto :goto_3

    .line 254
    :cond_a
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 255
    .line 256
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    sget-object v2, Ltc/b;->d:Ltc/b;

    .line 261
    .line 262
    if-ne v1, v2, :cond_b

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 269
    .line 270
    add-int/2addr v0, v1

    .line 271
    :cond_b
    :goto_3
    int-to-float v3, v0

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    int-to-float v4, v1

    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    int-to-float v5, v1

    .line 282
    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x0:Landroid/graphics/Paint;

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    move-object v1, p1

    .line 286
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    .line 288
    .line 289
    :cond_c
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E:Z

    .line 290
    .line 291
    if-eqz v1, :cond_d

    .line 292
    .line 293
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 294
    .line 295
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    sget-object v2, Ltc/b;->f:Ltc/b;

    .line 300
    .line 301
    if-eq v1, v2, :cond_e

    .line 302
    .line 303
    :cond_d
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 304
    .line 305
    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-boolean v1, v1, Ltc/b;->c:Z

    .line 310
    .line 311
    if-eqz v1, :cond_10

    .line 312
    .line 313
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 329
    .line 330
    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 336
    .line 337
    .line 338
    return p2

    .line 339
    :cond_f
    :goto_4
    return v2

    .line 340
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRefreshFooter()Lsc/c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 2
    .line 3
    instance-of v1, v0, Lsc/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lsc/c;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lsc/d;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 2
    .line 3
    instance-of v1, v0, Lsc/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lsc/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method protected j(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 23
    .line 24
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 25
    .line 26
    filled-new-array {v0, p1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    int-to-long v0, p4

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    new-instance p3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$d;

    .line 48
    .line 49
    invoke-direct {p3, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$d;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance p3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$e;

    .line 58
    .line 59
    invoke-direct {p3, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$e;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    int-to-long p2, p2

    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_1
    return-object v1
.end method

.method protected k(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float v1, p1, v0

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 11
    .line 12
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;

    .line 21
    .line 22
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    cmpg-float v0, p1, v0

    .line 31
    .line 32
    if-gez v0, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 35
    .line 36
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 37
    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 77
    .line 78
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 79
    .line 80
    if-eq v0, v1, :cond_4

    .line 81
    .line 82
    :cond_3
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;

    .line 83
    .line 84
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 85
    .line 86
    neg-int v1, v1

    .line 87
    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J:Z

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$i;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;FI)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 108
    .line 109
    :cond_5
    :goto_0
    return-void
.end method

.method public l(I)Lsc/f;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m(IZZ)Lsc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(IZZ)Lsc/f;
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    shr-int/lit8 p1, p1, 0x10

    .line 6
    .line 7
    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;IZZ)V

    .line 10
    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 15
    .line 16
    int-to-long v2, p1

    .line 17
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public n()Lsc/f;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C0:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x12c

    .line 10
    .line 11
    rsub-int v0, v0, 0x12c

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    shl-int/lit8 v0, v0, 0x10

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m(IZZ)Lsc/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public o(I)Lsc/f;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p(IZLjava/lang/Boolean;)Lsc/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H0:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_8

    .line 12
    .line 13
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v2

    .line 29
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 32
    .line 33
    if-nez v0, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    move v1, v2

    .line 40
    :goto_2
    if-ge v1, v0, :cond_6

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v4}, Lsc/a;->getView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eq v3, v4, :cond_5

    .line 55
    .line 56
    :cond_3
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-interface {v4}, Lsc/a;->getView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eq v3, v4, :cond_5

    .line 65
    .line 66
    :cond_4
    new-instance v4, Lyc/a;

    .line 67
    .line 68
    invoke-direct {v4, v3}, Lyc/a;-><init>(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iput-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 72
    .line 73
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 77
    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    const/high16 v0, 0x41a00000    # 20.0f

    .line 81
    .line 82
    invoke-static {v0}, Lxc/b;->c(F)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    new-instance v3, Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const v4, -0x9a00

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    const/16 v4, 0x11

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    .line 108
    .line 109
    sget v0, Luc/b;->a:I

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;

    .line 115
    .line 116
    const/4 v4, -0x1

    .line 117
    invoke-direct {v0, v4, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    invoke-super {p0, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lyc/a;

    .line 124
    .line 125
    invoke-direct {v0, v3}, Lyc/a;-><init>(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 129
    .line 130
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    :cond_7
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q:I

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r:I

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 150
    .line 151
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d0:Lvc/i;

    .line 152
    .line 153
    invoke-interface {v3, v4}, Lsc/b;->g(Lvc/i;)V

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 157
    .line 158
    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 159
    .line 160
    invoke-interface {v3, v4}, Lsc/b;->b(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 166
    .line 167
    invoke-interface {v3, v4, v0, v1}, Lsc/b;->f(Lsc/e;Landroid/view/View;Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 171
    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 180
    .line 181
    iput v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 182
    .line 183
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s:I

    .line 184
    .line 185
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t:I

    .line 186
    .line 187
    invoke-interface {v0, v2, v1, v3}, Lsc/b;->d(III)V

    .line 188
    .line 189
    .line 190
    :cond_8
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A:[I

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 195
    .line 196
    if-eqz v1, :cond_9

    .line 197
    .line 198
    invoke-interface {v1, v0}, Lsc/a;->setPrimaryColors([I)V

    .line 199
    .line 200
    .line 201
    :cond_9
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 202
    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A:[I

    .line 206
    .line 207
    invoke-interface {v0, v1}, Lsc/a;->setPrimaryColors([I)V

    .line 208
    .line 209
    .line 210
    :cond_a
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    :cond_b
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 222
    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    invoke-interface {v0}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget-boolean v0, v0, Ltc/b;->b:Z

    .line 230
    .line 231
    if-eqz v0, :cond_c

    .line 232
    .line 233
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 234
    .line 235
    invoke-interface {v0}, Lsc/a;->getView()Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 243
    .line 244
    if-eqz v0, :cond_d

    .line 245
    .line 246
    invoke-interface {v0}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-boolean v0, v0, Ltc/b;->b:Z

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 255
    .line 256
    invoke-interface {v0}, Lsc/a;->getView()Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H0:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    :cond_0
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 44
    .line 45
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v3, p0, v0}, Lsc/a;->c(Lsc/f;Z)I

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 57
    .line 58
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 59
    .line 60
    if-ne v4, v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v3, p0, v0}, Lsc/a;->c(Lsc/f;Z)I

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 70
    .line 71
    invoke-interface {v3, v0, v1}, Lsc/e;->f(IZ)Lsc/e;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 75
    .line 76
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 77
    .line 78
    if-eq v1, v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 91
    .line 92
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-gt v0, v1, :cond_11

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v5, v2

    .line 14
    move v4, v3

    .line 15
    move v6, v4

    .line 16
    :goto_0
    const/4 v7, 0x2

    .line 17
    const/4 v8, 0x1

    .line 18
    if-ge v4, v0, :cond_4

    .line 19
    .line 20
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-static {v9}, Lxc/b;->e(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    if-lt v6, v7, :cond_0

    .line 31
    .line 32
    if-ne v4, v8, :cond_1

    .line 33
    .line 34
    :cond_0
    move v5, v4

    .line 35
    move v6, v7

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    instance-of v7, v9, Lsc/a;

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    if-ge v6, v8, :cond_3

    .line 42
    .line 43
    if-lez v4, :cond_2

    .line 44
    .line 45
    move v6, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v6, v3

    .line 48
    :goto_1
    move v5, v4

    .line 49
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    if-ltz v5, :cond_7

    .line 53
    .line 54
    new-instance v4, Lyc/a;

    .line 55
    .line 56
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-direct {v4, v6}, Lyc/a;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 64
    .line 65
    if-ne v5, v8, :cond_6

    .line 66
    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    :goto_3
    move v1, v3

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    move v7, v2

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    if-ne v0, v7, :cond_7

    .line 74
    .line 75
    move v1, v2

    .line 76
    move v7, v8

    .line 77
    goto :goto_4

    .line 78
    :cond_7
    move v1, v2

    .line 79
    move v7, v1

    .line 80
    :goto_4
    move v4, v3

    .line 81
    :goto_5
    if-ge v4, v0, :cond_10

    .line 82
    .line 83
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eq v4, v1, :cond_d

    .line 88
    .line 89
    if-eq v4, v7, :cond_8

    .line 90
    .line 91
    if-ne v1, v2, :cond_8

    .line 92
    .line 93
    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 94
    .line 95
    if-nez v6, :cond_8

    .line 96
    .line 97
    instance-of v6, v5, Lsc/d;

    .line 98
    .line 99
    if-eqz v6, :cond_8

    .line 100
    .line 101
    goto :goto_9

    .line 102
    :cond_8
    if-eq v4, v7, :cond_9

    .line 103
    .line 104
    if-ne v7, v2, :cond_f

    .line 105
    .line 106
    instance-of v6, v5, Lsc/c;

    .line 107
    .line 108
    if-eqz v6, :cond_f

    .line 109
    .line 110
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 111
    .line 112
    if-nez v6, :cond_b

    .line 113
    .line 114
    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->V:Z

    .line 115
    .line 116
    if-nez v6, :cond_a

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_a
    move v6, v3

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    :goto_6
    move v6, v8

    .line 122
    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 123
    .line 124
    instance-of v6, v5, Lsc/c;

    .line 125
    .line 126
    if-eqz v6, :cond_c

    .line 127
    .line 128
    check-cast v5, Lsc/c;

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_c
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;

    .line 132
    .line 133
    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    move-object v5, v6

    .line 137
    :goto_8
    iput-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 138
    .line 139
    goto :goto_b

    .line 140
    :cond_d
    :goto_9
    instance-of v6, v5, Lsc/d;

    .line 141
    .line 142
    if-eqz v6, :cond_e

    .line 143
    .line 144
    check-cast v5, Lsc/d;

    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_e
    new-instance v6, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;

    .line 148
    .line 149
    invoke-direct {v6, v5}, Lcom/scwang/smart/refresh/layout/wrapper/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    move-object v5, v6

    .line 153
    :goto_a
    iput-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 154
    .line 155
    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_10
    return-void

    .line 159
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    const-string/jumbo v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_13

    .line 5
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Luc/a;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lsc/b;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p4

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    invoke-interface {v3}, Lsc/b;->getView()Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 11
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 13
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 16
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    iget-object v8, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 18
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, p4

    .line 21
    :goto_3
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    invoke-interface {v3}, Lsc/a;->getView()Landroid/view/View;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 23
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n0:I

    add-int/2addr v4, v6

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    invoke-interface {v1}, Lsc/a;->getSpinnerStyle()Ltc/b;

    move-result-object v1

    sget-object v8, Ltc/b;->d:Ltc/b;

    if-ne v1, v8, :cond_7

    .line 29
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 30
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 31
    :cond_8
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, p4

    .line 33
    :goto_5
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    invoke-interface {v0}, Lsc/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 35
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    :goto_6
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    invoke-interface {v3}, Lsc/a;->getSpinnerStyle()Ltc/b;

    move-result-object v3

    .line 37
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o0:I

    sub-int/2addr v5, v6

    .line 39
    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 40
    invoke-interface {v6}, Lsc/a;->getSpinnerStyle()Ltc/b;

    move-result-object v6

    sget-object v7, Ltc/b;->d:Ltc/b;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 41
    invoke-virtual {p0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 42
    iget-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    invoke-interface {v5}, Lsc/b;->getView()Landroid/view/View;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 44
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    move v6, p4

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 46
    :cond_c
    sget-object v6, Ltc/b;->h:Ltc/b;

    if-ne v3, v6, :cond_d

    .line 47
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->o0:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 48
    sget-object v1, Ltc/b;->g:Ltc/b;

    if-eq v3, v1, :cond_10

    sget-object v1, Ltc/b;->f:Ltc/b;

    if-ne v3, v1, :cond_e

    goto :goto_a

    .line 49
    :cond_e
    iget-boolean v1, v3, Ltc/b;->c:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_11

    .line 50
    iget-boolean v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    move v1, p4

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_9
    sub-int/2addr v5, v1

    goto :goto_b

    .line 51
    :cond_10
    :goto_a
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    goto :goto_9

    .line 52
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 54
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    :goto_1
    if-ge v7, v6, :cond_24

    .line 28
    .line 29
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    const/16 v12, 0x8

    .line 38
    .line 39
    if-eq v11, v12, :cond_1

    .line 40
    .line 41
    sget v11, Luc/a;->a:I

    .line 42
    .line 43
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-string v12, "GONE"

    .line 48
    .line 49
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-eqz v11, :cond_2

    .line 54
    .line 55
    :cond_1
    move/from16 v16, v6

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    goto/16 :goto_15

    .line 59
    .line 60
    :cond_2
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 61
    .line 62
    if-eqz v11, :cond_f

    .line 63
    .line 64
    invoke-interface {v11}, Lsc/a;->getView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    if-ne v11, v10, :cond_f

    .line 69
    .line 70
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 71
    .line 72
    invoke-interface {v11}, Lsc/a;->getView()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    .line 82
    if-eqz v13, :cond_3

    .line 83
    .line 84
    move-object v13, v12

    .line 85
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    sget-object v13, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    .line 90
    :goto_2
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    .line 92
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 93
    .line 94
    add-int/2addr v4, v14

    .line 95
    iget v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    .line 97
    invoke-static {v1, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 102
    .line 103
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 104
    .line 105
    iget v15, v5, Ltc/a;->a:I

    .line 106
    .line 107
    move/from16 v16, v6

    .line 108
    .line 109
    sget-object v6, Ltc/a;->i:Ltc/a;

    .line 110
    .line 111
    iget v6, v6, Ltc/a;->a:I

    .line 112
    .line 113
    if-ge v15, v6, :cond_8

    .line 114
    .line 115
    iget v6, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    .line 117
    if-lez v6, :cond_5

    .line 118
    .line 119
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 120
    .line 121
    add-int/2addr v6, v14

    .line 122
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 123
    .line 124
    add-int/2addr v6, v14

    .line 125
    sget-object v14, Ltc/a;->g:Ltc/a;

    .line 126
    .line 127
    invoke-virtual {v5, v14}, Ltc/a;->a(Ltc/a;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_4

    .line 132
    .line 133
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .line 135
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 136
    .line 137
    add-int/2addr v5, v12

    .line 138
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    .line 140
    add-int/2addr v5, v12

    .line 141
    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 142
    .line 143
    iput-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 144
    .line 145
    :cond_4
    move v14, v6

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    const/4 v5, -0x2

    .line 148
    if-ne v6, v5, :cond_8

    .line 149
    .line 150
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 151
    .line 152
    invoke-interface {v5}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    sget-object v6, Ltc/b;->h:Ltc/b;

    .line 157
    .line 158
    if-ne v5, v6, :cond_6

    .line 159
    .line 160
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 161
    .line 162
    iget-boolean v5, v5, Ltc/a;->b:Z

    .line 163
    .line 164
    if-nez v5, :cond_8

    .line 165
    .line 166
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    .line 172
    sub-int/2addr v5, v6

    .line 173
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 174
    .line 175
    sub-int/2addr v5, v6

    .line 176
    const/4 v6, 0x0

    .line 177
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    const/high16 v6, -0x80000000

    .line 182
    .line 183
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    invoke-virtual {v11, v4, v12}, Landroid/view/View;->measure(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-lez v6, :cond_8

    .line 195
    .line 196
    if-eq v6, v5, :cond_7

    .line 197
    .line 198
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 199
    .line 200
    sget-object v12, Ltc/a;->e:Ltc/a;

    .line 201
    .line 202
    invoke-virtual {v5, v12}, Ltc/a;->a(Ltc/a;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_7

    .line 207
    .line 208
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 209
    .line 210
    add-int/2addr v6, v5

    .line 211
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    .line 213
    add-int/2addr v6, v5

    .line 214
    iput v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 215
    .line 216
    iput-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 217
    .line 218
    :cond_7
    const/4 v14, -0x1

    .line 219
    :cond_8
    :goto_3
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 220
    .line 221
    invoke-interface {v5}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    sget-object v6, Ltc/b;->h:Ltc/b;

    .line 226
    .line 227
    if-ne v5, v6, :cond_9

    .line 228
    .line 229
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    const/4 v5, -0x1

    .line 234
    const/4 v6, 0x0

    .line 235
    goto :goto_7

    .line 236
    :cond_9
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 237
    .line 238
    invoke-interface {v5}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    iget-boolean v5, v5, Ltc/b;->c:Z

    .line 243
    .line 244
    if-eqz v5, :cond_b

    .line 245
    .line 246
    if-nez v3, :cond_b

    .line 247
    .line 248
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 249
    .line 250
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_a

    .line 255
    .line 256
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 257
    .line 258
    :goto_4
    const/4 v6, 0x0

    .line 259
    goto :goto_5

    .line 260
    :cond_a
    const/4 v5, 0x0

    .line 261
    goto :goto_4

    .line 262
    :goto_5
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    :goto_6
    const/4 v5, -0x1

    .line 267
    goto :goto_7

    .line 268
    :cond_b
    const/4 v6, 0x0

    .line 269
    goto :goto_6

    .line 270
    :goto_7
    if-eq v14, v5, :cond_c

    .line 271
    .line 272
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 273
    .line 274
    sub-int/2addr v14, v5

    .line 275
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 276
    .line 277
    sub-int/2addr v14, v5

    .line 278
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    const/high16 v6, 0x40000000    # 2.0f

    .line 283
    .line 284
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 289
    .line 290
    .line 291
    :cond_c
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 292
    .line 293
    iget-boolean v5, v4, Ltc/a;->b:Z

    .line 294
    .line 295
    if-nez v5, :cond_e

    .line 296
    .line 297
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 298
    .line 299
    const/high16 v6, 0x41200000    # 10.0f

    .line 300
    .line 301
    cmpg-float v12, v5, v6

    .line 302
    .line 303
    if-gez v12, :cond_d

    .line 304
    .line 305
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 306
    .line 307
    int-to-float v6, v6

    .line 308
    mul-float/2addr v5, v6

    .line 309
    :cond_d
    invoke-virtual {v4}, Ltc/a;->b()Ltc/a;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iput-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k0:Ltc/a;

    .line 314
    .line 315
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 316
    .line 317
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 318
    .line 319
    iget v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 320
    .line 321
    float-to-int v5, v5

    .line 322
    invoke-interface {v4, v6, v12, v5}, Lsc/a;->h(Lsc/e;II)V

    .line 323
    .line 324
    .line 325
    :cond_e
    if-eqz v3, :cond_10

    .line 326
    .line 327
    iget-boolean v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 328
    .line 329
    invoke-virtual {v0, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_10

    .line 334
    .line 335
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    add-int/2addr v8, v4

    .line 340
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    add-int/2addr v9, v4

    .line 345
    goto :goto_8

    .line 346
    :cond_f
    move/from16 v16, v6

    .line 347
    .line 348
    :cond_10
    :goto_8
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 349
    .line 350
    if-eqz v4, :cond_1c

    .line 351
    .line 352
    invoke-interface {v4}, Lsc/a;->getView()Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    if-ne v4, v10, :cond_1c

    .line 357
    .line 358
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 359
    .line 360
    invoke-interface {v4}, Lsc/a;->getView()Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 369
    .line 370
    if-eqz v6, :cond_11

    .line 371
    .line 372
    move-object v6, v5

    .line 373
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_11
    sget-object v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    .line 378
    :goto_9
    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 379
    .line 380
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 381
    .line 382
    add-int/2addr v11, v12

    .line 383
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 384
    .line 385
    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    iget v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 390
    .line 391
    iget-object v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 392
    .line 393
    iget v14, v13, Ltc/a;->a:I

    .line 394
    .line 395
    sget-object v15, Ltc/a;->i:Ltc/a;

    .line 396
    .line 397
    iget v15, v15, Ltc/a;->a:I

    .line 398
    .line 399
    if-ge v14, v15, :cond_12

    .line 400
    .line 401
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 402
    .line 403
    if-lez v14, :cond_13

    .line 404
    .line 405
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 406
    .line 407
    add-int/2addr v14, v12

    .line 408
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 409
    .line 410
    add-int/2addr v12, v14

    .line 411
    sget-object v14, Ltc/a;->g:Ltc/a;

    .line 412
    .line 413
    invoke-virtual {v13, v14}, Ltc/a;->a(Ltc/a;)Z

    .line 414
    .line 415
    .line 416
    move-result v13

    .line 417
    if-eqz v13, :cond_12

    .line 418
    .line 419
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    .line 421
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 422
    .line 423
    add-int/2addr v5, v13

    .line 424
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 425
    .line 426
    add-int/2addr v5, v13

    .line 427
    iput v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 428
    .line 429
    iput-object v14, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 430
    .line 431
    :cond_12
    move v5, v12

    .line 432
    goto :goto_a

    .line 433
    :cond_13
    const/4 v5, -0x2

    .line 434
    if-ne v14, v5, :cond_12

    .line 435
    .line 436
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 437
    .line 438
    invoke-interface {v5}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    sget-object v13, Ltc/b;->h:Ltc/b;

    .line 443
    .line 444
    if-ne v5, v13, :cond_14

    .line 445
    .line 446
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 447
    .line 448
    iget-boolean v5, v5, Ltc/a;->b:Z

    .line 449
    .line 450
    if-nez v5, :cond_12

    .line 451
    .line 452
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 457
    .line 458
    sub-int/2addr v5, v13

    .line 459
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 460
    .line 461
    sub-int/2addr v5, v13

    .line 462
    const/4 v13, 0x0

    .line 463
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    const/high16 v13, -0x80000000

    .line 468
    .line 469
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    invoke-virtual {v4, v11, v13}, Landroid/view/View;->measure(II)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 477
    .line 478
    .line 479
    move-result v13

    .line 480
    if-lez v13, :cond_12

    .line 481
    .line 482
    if-eq v13, v5, :cond_15

    .line 483
    .line 484
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 485
    .line 486
    sget-object v12, Ltc/a;->e:Ltc/a;

    .line 487
    .line 488
    invoke-virtual {v5, v12}, Ltc/a;->a(Ltc/a;)Z

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    if-eqz v5, :cond_15

    .line 493
    .line 494
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 495
    .line 496
    add-int/2addr v13, v5

    .line 497
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 498
    .line 499
    add-int/2addr v13, v5

    .line 500
    iput v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 501
    .line 502
    iput-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 503
    .line 504
    :cond_15
    const/4 v5, -0x1

    .line 505
    :goto_a
    iget-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 506
    .line 507
    invoke-interface {v12}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 508
    .line 509
    .line 510
    move-result-object v12

    .line 511
    sget-object v13, Ltc/b;->h:Ltc/b;

    .line 512
    .line 513
    if-ne v12, v13, :cond_17

    .line 514
    .line 515
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    :cond_16
    const/4 v12, 0x0

    .line 520
    :goto_b
    const/4 v13, -0x1

    .line 521
    goto :goto_e

    .line 522
    :cond_17
    iget-object v12, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 523
    .line 524
    invoke-interface {v12}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 525
    .line 526
    .line 527
    move-result-object v12

    .line 528
    iget-boolean v12, v12, Ltc/b;->c:Z

    .line 529
    .line 530
    if-eqz v12, :cond_16

    .line 531
    .line 532
    if-nez v3, :cond_16

    .line 533
    .line 534
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 535
    .line 536
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    if-eqz v5, :cond_18

    .line 541
    .line 542
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 543
    .line 544
    neg-int v5, v5

    .line 545
    :goto_c
    const/4 v12, 0x0

    .line 546
    goto :goto_d

    .line 547
    :cond_18
    const/4 v5, 0x0

    .line 548
    goto :goto_c

    .line 549
    :goto_d
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    goto :goto_b

    .line 554
    :goto_e
    if-eq v5, v13, :cond_19

    .line 555
    .line 556
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 557
    .line 558
    sub-int/2addr v5, v13

    .line 559
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 560
    .line 561
    sub-int/2addr v5, v6

    .line 562
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    const/high16 v6, 0x40000000    # 2.0f

    .line 567
    .line 568
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    invoke-virtual {v4, v11, v5}, Landroid/view/View;->measure(II)V

    .line 573
    .line 574
    .line 575
    :cond_19
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 576
    .line 577
    iget-boolean v6, v5, Ltc/a;->b:Z

    .line 578
    .line 579
    if-nez v6, :cond_1b

    .line 580
    .line 581
    iget v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 582
    .line 583
    const/high16 v11, 0x41200000    # 10.0f

    .line 584
    .line 585
    cmpg-float v11, v6, v11

    .line 586
    .line 587
    if-gez v11, :cond_1a

    .line 588
    .line 589
    iget v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 590
    .line 591
    int-to-float v11, v11

    .line 592
    mul-float/2addr v6, v11

    .line 593
    :cond_1a
    invoke-virtual {v5}, Ltc/a;->b()Ltc/a;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    iput-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m0:Ltc/a;

    .line 598
    .line 599
    iget-object v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 600
    .line 601
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 602
    .line 603
    iget v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 604
    .line 605
    float-to-int v6, v6

    .line 606
    invoke-interface {v5, v11, v13, v6}, Lsc/a;->h(Lsc/e;II)V

    .line 607
    .line 608
    .line 609
    :cond_1b
    if-eqz v3, :cond_1d

    .line 610
    .line 611
    iget-boolean v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 612
    .line 613
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-eqz v5, :cond_1d

    .line 618
    .line 619
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    add-int/2addr v8, v5

    .line 624
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 625
    .line 626
    .line 627
    move-result v4

    .line 628
    add-int/2addr v9, v4

    .line 629
    goto :goto_f

    .line 630
    :cond_1c
    const/4 v12, 0x0

    .line 631
    :cond_1d
    :goto_f
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 632
    .line 633
    if-eqz v4, :cond_23

    .line 634
    .line 635
    invoke-interface {v4}, Lsc/b;->getView()Landroid/view/View;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    if-ne v4, v10, :cond_23

    .line 640
    .line 641
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 642
    .line 643
    invoke-interface {v4}, Lsc/b;->getView()Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 652
    .line 653
    if-eqz v6, :cond_1e

    .line 654
    .line 655
    move-object v6, v5

    .line 656
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 657
    .line 658
    goto :goto_10

    .line 659
    :cond_1e
    sget-object v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 660
    .line 661
    :goto_10
    iget-object v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 662
    .line 663
    if-eqz v10, :cond_1f

    .line 664
    .line 665
    iget-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 666
    .line 667
    invoke-virtual {v0, v10}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 668
    .line 669
    .line 670
    move-result v10

    .line 671
    if-eqz v10, :cond_1f

    .line 672
    .line 673
    iget-boolean v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F:Z

    .line 674
    .line 675
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 676
    .line 677
    invoke-virtual {v0, v10, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    if-eqz v10, :cond_1f

    .line 682
    .line 683
    const/4 v10, 0x1

    .line 684
    goto :goto_11

    .line 685
    :cond_1f
    move v10, v12

    .line 686
    :goto_11
    iget-object v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 687
    .line 688
    if-eqz v11, :cond_20

    .line 689
    .line 690
    iget-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 691
    .line 692
    invoke-virtual {v0, v11}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 693
    .line 694
    .line 695
    move-result v11

    .line 696
    if-eqz v11, :cond_20

    .line 697
    .line 698
    iget-boolean v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 699
    .line 700
    iget-object v13, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 701
    .line 702
    invoke-virtual {v0, v11, v13}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->t(ZLsc/a;)Z

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    if-eqz v11, :cond_20

    .line 707
    .line 708
    const/4 v11, 0x1

    .line 709
    goto :goto_12

    .line 710
    :cond_20
    move v11, v12

    .line 711
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 712
    .line 713
    .line 714
    move-result v13

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 716
    .line 717
    .line 718
    move-result v14

    .line 719
    add-int/2addr v13, v14

    .line 720
    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 721
    .line 722
    add-int/2addr v13, v14

    .line 723
    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 724
    .line 725
    add-int/2addr v13, v14

    .line 726
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 727
    .line 728
    invoke-static {v1, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 729
    .line 730
    .line 731
    move-result v13

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 733
    .line 734
    .line 735
    move-result v14

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 737
    .line 738
    .line 739
    move-result v15

    .line 740
    add-int/2addr v14, v15

    .line 741
    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 742
    .line 743
    add-int/2addr v14, v15

    .line 744
    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 745
    .line 746
    add-int/2addr v14, v15

    .line 747
    if-eqz v3, :cond_21

    .line 748
    .line 749
    if-eqz v10, :cond_21

    .line 750
    .line 751
    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 752
    .line 753
    goto :goto_13

    .line 754
    :cond_21
    move v10, v12

    .line 755
    :goto_13
    add-int/2addr v14, v10

    .line 756
    if-eqz v3, :cond_22

    .line 757
    .line 758
    if-eqz v11, :cond_22

    .line 759
    .line 760
    iget v10, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 761
    .line 762
    goto :goto_14

    .line 763
    :cond_22
    move v10, v12

    .line 764
    :goto_14
    add-int/2addr v14, v10

    .line 765
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 766
    .line 767
    invoke-static {v2, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    invoke-virtual {v4, v13, v5}, Landroid/view/View;->measure(II)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 775
    .line 776
    .line 777
    move-result v5

    .line 778
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 779
    .line 780
    add-int/2addr v5, v10

    .line 781
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 782
    .line 783
    add-int/2addr v5, v10

    .line 784
    add-int/2addr v8, v5

    .line 785
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 790
    .line 791
    add-int/2addr v4, v5

    .line 792
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 793
    .line 794
    add-int/2addr v4, v5

    .line 795
    add-int/2addr v9, v4

    .line 796
    :cond_23
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 797
    .line 798
    move/from16 v6, v16

    .line 799
    .line 800
    goto/16 :goto_1

    .line 801
    .line 802
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    add-int/2addr v3, v4

    .line 811
    add-int/2addr v8, v3

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    add-int/2addr v3, v4

    .line 821
    add-int/2addr v9, v3

    .line 822
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 839
    .line 840
    .line 841
    move-result v3

    .line 842
    invoke-static {v3, v2}, Landroid/view/View;->resolveSize(II)I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    invoke-super {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 847
    .line 848
    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    int-to-float v1, v1

    .line 854
    const/high16 v2, 0x40000000    # 2.0f

    .line 855
    .line 856
    div-float/2addr v1, v2

    .line 857
    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 858
    .line 859
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    cmpl-float p1, p3, p1

    .line 7
    .line 8
    if-gtz p1, :cond_2

    .line 9
    .line 10
    :cond_0
    neg-float p1, p3

    .line 11
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->J(F)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 2
    .line 3
    mul-int v0, p3, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le p1, v0, :cond_0

    .line 19
    .line 20
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 21
    .line 22
    iput v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 23
    .line 24
    move v1, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 27
    .line 28
    sub-int/2addr p1, p3

    .line 29
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 30
    .line 31
    move v1, p3

    .line 32
    :goto_0
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w(F)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-lez p3, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sub-int/2addr p1, p3

    .line 46
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 47
    .line 48
    int-to-float p1, p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w(F)V

    .line 50
    .line 51
    .line 52
    move v1, p3

    .line 53
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 54
    .line 55
    sub-int/2addr p3, v1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    aget p2, p4, p1

    .line 62
    .line 63
    add-int/2addr p2, v1

    .line 64
    aput p2, p4, p1

    .line 65
    .line 66
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g0:[I

    .line 4
    .line 5
    move v1, p2

    .line 6
    move v2, p3

    .line 7
    move v3, p4

    .line 8
    move v4, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g0:[I

    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    aget p2, p2, p4

    .line 17
    .line 18
    add-int/2addr p5, p2

    .line 19
    if-gez p5, :cond_1

    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    :cond_0
    iget p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 30
    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d0:Lvc/i;

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 38
    .line 39
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p2, v0}, Lvc/i;->b(Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    :cond_1
    if-lez p5, :cond_7

    .line 50
    .line 51
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 56
    .line 57
    if-eqz p2, :cond_7

    .line 58
    .line 59
    :cond_2
    iget p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 60
    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d0:Lvc/i;

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 68
    .line 69
    invoke-interface {v0}, Lsc/b;->getView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p2, v0}, Lvc/i;->a(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_7

    .line 78
    .line 79
    :cond_3
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 80
    .line 81
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 82
    .line 83
    if-eq p2, v0, :cond_4

    .line 84
    .line 85
    iget-boolean p2, p2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    .line 86
    .line 87
    if-eqz p2, :cond_6

    .line 88
    .line 89
    :cond_4
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 90
    .line 91
    if-lez p5, :cond_5

    .line 92
    .line 93
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 97
    .line 98
    :goto_0
    invoke-interface {p2, v0}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 99
    .line 100
    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 113
    .line 114
    sub-int/2addr p1, p5

    .line 115
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 116
    .line 117
    int-to-float p1, p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w(F)V

    .line 119
    .line 120
    .line 121
    :cond_7
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 122
    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    if-gez p3, :cond_8

    .line 126
    .line 127
    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 129
    .line 130
    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    and-int/lit8 p2, p3, 0x2

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 14
    .line 15
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->r(I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    and-int/lit8 p1, p3, 0x2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->K:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 8
    .line 9
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public p(IZLjava/lang/Boolean;)Lsc/f;
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    shr-int/lit8 p1, p1, 0x10

    .line 6
    .line 7
    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    .line 10
    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 15
    .line 16
    int-to-long v2, p1

    .line 17
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public q()Lsc/f;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C0:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x12c

    .line 10
    .line 11
    rsub-int v0, v0, 0x12c

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    shl-int/lit8 v0, v0, 0x10

    .line 23
    .line 24
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v0, v2, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p(IZLjava/lang/Boolean;)Lsc/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method protected r(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_5

    .line 3
    .line 4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 10
    .line 11
    iget-boolean v2, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

    .line 12
    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 16
    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 20
    .line 21
    if-eq p1, v2, :cond_3

    .line 22
    .line 23
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 24
    .line 25
    if-ne p1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 33
    .line 34
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 35
    .line 36
    invoke-interface {p1, v2}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 45
    .line 46
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 47
    .line 48
    invoke-interface {p1, v2}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    return v0

    .line 67
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 68
    .line 69
    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lsc/b;->h()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p:Z

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected s(Z)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->Q:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected setStateDirectLoading(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iput-wide v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C0:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->c0:Lvc/e;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lvc/e;->c(Lsc/f;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 p1, 0x7d0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l(I)Lsc/f;

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 39
    .line 40
    const/high16 v1, 0x41200000    # 10.0f

    .line 41
    .line 42
    cmpg-float v1, v0, v1

    .line 43
    .line 44
    if-gez v1, :cond_2

    .line 45
    .line 46
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    mul-float/2addr v0, v1

    .line 50
    :cond_2
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 51
    .line 52
    float-to-int v0, v0

    .line 53
    invoke-interface {p1, p0, v1, v0}, Lsc/a;->a(Lsc/f;II)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$b;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 12
    .line 13
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 14
    .line 15
    neg-int v1, v1

    .line 16
    invoke-interface {p1, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 30
    .line 31
    const/high16 v3, 0x41200000    # 10.0f

    .line 32
    .line 33
    cmpg-float v3, v2, v3

    .line 34
    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    mul-float/2addr v2, v3

    .line 41
    :cond_1
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 42
    .line 43
    float-to-int v2, v2

    .line 44
    invoke-interface {v1, p0, v3, v2}, Lsc/a;->g(Lsc/f;II)V

    .line 45
    .line 46
    .line 47
    :cond_2
    if-nez p1, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$c;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 12
    .line 13
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 29
    .line 30
    const/high16 v3, 0x41200000    # 10.0f

    .line 31
    .line 32
    cmpg-float v3, v2, v3

    .line 33
    .line 34
    if-gez v3, :cond_1

    .line 35
    .line 36
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    mul-float/2addr v2, v3

    .line 40
    :cond_1
    float-to-int v2, v2

    .line 41
    iget v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 42
    .line 43
    invoke-interface {v1, p0, v3, v2}, Lsc/a;->g(Lsc/f;II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    if-nez p1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method protected setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 8
    .line 9
    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 19
    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method protected t(ZLsc/a;)Z
    .locals 0
    .param p2    # Lsc/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->M:Z

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-interface {p2}, Lsc/a;->getSpinnerStyle()Ltc/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ltc/b;->f:Ltc/b;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected w(F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    cmpg-float v1, p1, v2

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 17
    .line 18
    invoke-interface {v1}, Lsc/b;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move/from16 v1, p1

    .line 27
    .line 28
    :goto_0
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 29
    .line 30
    mul-int/lit8 v3, v3, 0x5

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    cmpl-float v3, v1, v3

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-lez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    sget v3, Luc/a;->a:I

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 53
    .line 54
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 55
    .line 56
    int-to-float v6, v5

    .line 57
    const/high16 v7, 0x40c00000    # 6.0f

    .line 58
    .line 59
    div-float/2addr v6, v7

    .line 60
    cmpg-float v3, v3, v6

    .line 61
    .line 62
    if-gez v3, :cond_1

    .line 63
    .line 64
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 65
    .line 66
    int-to-float v5, v5

    .line 67
    const/high16 v6, 0x41800000    # 16.0f

    .line 68
    .line 69
    div-float/2addr v5, v6

    .line 70
    cmpg-float v3, v3, v5

    .line 71
    .line 72
    if-gez v3, :cond_1

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v5, "\u4e0d\u8981\u518d\u62c9\u4e86\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    .line 87
    .line 88
    sget v3, Luc/a;->a:I

    .line 89
    .line 90
    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 94
    .line 95
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    if-ne v3, v5, :cond_2

    .line 99
    .line 100
    cmpl-float v5, v1, v2

    .line 101
    .line 102
    if-lez v5, :cond_2

    .line 103
    .line 104
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 105
    .line 106
    float-to-int v5, v1

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-interface {v3, v5, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 116
    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_2
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 121
    .line 122
    const-wide/16 v7, 0x0

    .line 123
    .line 124
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 125
    .line 126
    const/high16 v11, 0x41200000    # 10.0f

    .line 127
    .line 128
    if-ne v3, v5, :cond_6

    .line 129
    .line 130
    cmpl-float v5, v1, v2

    .line 131
    .line 132
    if-ltz v5, :cond_6

    .line 133
    .line 134
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 135
    .line 136
    int-to-float v5, v3

    .line 137
    cmpg-float v5, v1, v5

    .line 138
    .line 139
    if-gez v5, :cond_3

    .line 140
    .line 141
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 142
    .line 143
    float-to-int v5, v1

    .line 144
    invoke-interface {v3, v5, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 145
    .line 146
    .line 147
    goto/16 :goto_6

    .line 148
    .line 149
    :cond_3
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 150
    .line 151
    cmpg-float v11, v5, v11

    .line 152
    .line 153
    if-gez v11, :cond_4

    .line 154
    .line 155
    int-to-float v11, v3

    .line 156
    mul-float/2addr v5, v11

    .line 157
    :cond_4
    int-to-float v3, v3

    .line 158
    sub-float/2addr v5, v3

    .line 159
    float-to-double v14, v5

    .line 160
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 161
    .line 162
    mul-int/lit8 v3, v3, 0x4

    .line 163
    .line 164
    div-int/lit8 v3, v3, 0x3

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 175
    .line 176
    sub-int/2addr v3, v5

    .line 177
    int-to-double v12, v3

    .line 178
    int-to-float v3, v5

    .line 179
    sub-float v3, v1, v3

    .line 180
    .line 181
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    .line 182
    .line 183
    mul-float/2addr v3, v5

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    float-to-double v4, v3

    .line 189
    neg-double v2, v4

    .line 190
    cmpl-double v7, v12, v7

    .line 191
    .line 192
    if-nez v7, :cond_5

    .line 193
    .line 194
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 195
    .line 196
    :cond_5
    div-double/2addr v2, v12

    .line 197
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 202
    .line 203
    sub-double v12, v7, v2

    .line 204
    .line 205
    mul-double/2addr v14, v12

    .line 206
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 211
    .line 212
    double-to-int v2, v2

    .line 213
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 214
    .line 215
    add-int/2addr v2, v3

    .line 216
    invoke-interface {v4, v2, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :cond_6
    cmpg-float v4, v1, v2

    .line 222
    .line 223
    if-gez v4, :cond_8

    .line 224
    .line 225
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 226
    .line 227
    if-eq v3, v2, :cond_9

    .line 228
    .line 229
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 230
    .line 231
    if-eqz v2, :cond_7

    .line 232
    .line 233
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 234
    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 238
    .line 239
    if-eqz v2, :cond_7

    .line 240
    .line 241
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_9

    .line 248
    .line 249
    :cond_7
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 250
    .line 251
    if-eqz v2, :cond_8

    .line 252
    .line 253
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 254
    .line 255
    if-nez v2, :cond_8

    .line 256
    .line 257
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_8

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_8
    const/4 v2, 0x0

    .line 267
    goto :goto_2

    .line 268
    :cond_9
    :goto_1
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 269
    .line 270
    neg-int v3, v2

    .line 271
    int-to-float v3, v3

    .line 272
    cmpl-float v3, v1, v3

    .line 273
    .line 274
    if-lez v3, :cond_a

    .line 275
    .line 276
    iget-object v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 277
    .line 278
    float-to-int v3, v1

    .line 279
    invoke-interface {v2, v3, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 280
    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_a
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 285
    .line 286
    cmpg-float v4, v3, v11

    .line 287
    .line 288
    if-gez v4, :cond_b

    .line 289
    .line 290
    int-to-float v4, v2

    .line 291
    mul-float/2addr v3, v4

    .line 292
    :cond_b
    int-to-float v2, v2

    .line 293
    sub-float/2addr v3, v2

    .line 294
    float-to-double v2, v3

    .line 295
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 296
    .line 297
    mul-int/lit8 v4, v4, 0x4

    .line 298
    .line 299
    div-int/lit8 v4, v4, 0x3

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 310
    .line 311
    sub-int/2addr v4, v5

    .line 312
    int-to-double v11, v4

    .line 313
    int-to-float v4, v5

    .line 314
    add-float/2addr v4, v1

    .line 315
    iget v5, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    .line 316
    .line 317
    mul-float/2addr v4, v5

    .line 318
    const/4 v5, 0x0

    .line 319
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    neg-float v4, v4

    .line 324
    float-to-double v4, v4

    .line 325
    neg-double v13, v4

    .line 326
    cmpl-double v7, v11, v7

    .line 327
    .line 328
    if-nez v7, :cond_c

    .line 329
    .line 330
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 331
    .line 332
    :cond_c
    div-double/2addr v13, v11

    .line 333
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 334
    .line 335
    .line 336
    move-result-wide v7

    .line 337
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 338
    .line 339
    sub-double v12, v9, v7

    .line 340
    .line 341
    mul-double/2addr v2, v12

    .line 342
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 343
    .line 344
    .line 345
    move-result-wide v2

    .line 346
    neg-double v2, v2

    .line 347
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 348
    .line 349
    double-to-int v2, v2

    .line 350
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 351
    .line 352
    sub-int/2addr v2, v3

    .line 353
    invoke-interface {v4, v2, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 354
    .line 355
    .line 356
    goto/16 :goto_6

    .line 357
    .line 358
    :goto_2
    cmpl-float v3, v1, v2

    .line 359
    .line 360
    if-ltz v3, :cond_f

    .line 361
    .line 362
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p0:F

    .line 363
    .line 364
    cmpg-float v3, v2, v11

    .line 365
    .line 366
    if-gez v3, :cond_d

    .line 367
    .line 368
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 369
    .line 370
    int-to-float v3, v3

    .line 371
    mul-float/2addr v3, v2

    .line 372
    float-to-double v2, v3

    .line 373
    goto :goto_3

    .line 374
    :cond_d
    float-to-double v2, v2

    .line 375
    :goto_3
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 376
    .line 377
    div-int/lit8 v4, v4, 0x2

    .line 378
    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    int-to-double v4, v4

    .line 388
    iget v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    .line 389
    .line 390
    mul-float/2addr v11, v1

    .line 391
    const/4 v12, 0x0

    .line 392
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    float-to-double v11, v11

    .line 397
    neg-double v13, v11

    .line 398
    cmpl-double v7, v4, v7

    .line 399
    .line 400
    if-nez v7, :cond_e

    .line 401
    .line 402
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 403
    .line 404
    :cond_e
    div-double/2addr v13, v4

    .line 405
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 406
    .line 407
    .line 408
    move-result-wide v4

    .line 409
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 410
    .line 411
    sub-double v4, v7, v4

    .line 412
    .line 413
    mul-double/2addr v2, v4

    .line 414
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 415
    .line 416
    .line 417
    move-result-wide v2

    .line 418
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 419
    .line 420
    double-to-int v2, v2

    .line 421
    invoke-interface {v4, v2, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_f
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->q0:F

    .line 426
    .line 427
    cmpg-float v3, v2, v11

    .line 428
    .line 429
    if-gez v3, :cond_10

    .line 430
    .line 431
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 432
    .line 433
    int-to-float v3, v3

    .line 434
    mul-float/2addr v3, v2

    .line 435
    float-to-double v2, v3

    .line 436
    goto :goto_4

    .line 437
    :cond_10
    float-to-double v2, v2

    .line 438
    :goto_4
    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g:I

    .line 439
    .line 440
    div-int/lit8 v4, v4, 0x2

    .line 441
    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    int-to-double v4, v4

    .line 451
    iget v11, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l:F

    .line 452
    .line 453
    mul-float/2addr v11, v1

    .line 454
    const/4 v12, 0x0

    .line 455
    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    .line 456
    .line 457
    .line 458
    move-result v11

    .line 459
    neg-float v11, v11

    .line 460
    float-to-double v11, v11

    .line 461
    neg-double v13, v11

    .line 462
    cmpl-double v7, v4, v7

    .line 463
    .line 464
    if-nez v7, :cond_11

    .line 465
    .line 466
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_11
    move-wide v7, v4

    .line 470
    :goto_5
    div-double/2addr v13, v7

    .line 471
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 476
    .line 477
    sub-double v4, v7, v4

    .line 478
    .line 479
    mul-double/2addr v2, v4

    .line 480
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 481
    .line 482
    .line 483
    move-result-wide v2

    .line 484
    neg-double v2, v2

    .line 485
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 486
    .line 487
    double-to-int v2, v2

    .line 488
    invoke-interface {v4, v2, v6}, Lsc/e;->f(IZ)Lsc/e;

    .line 489
    .line 490
    .line 491
    :goto_6
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 492
    .line 493
    if-eqz v2, :cond_13

    .line 494
    .line 495
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 496
    .line 497
    if-nez v2, :cond_13

    .line 498
    .line 499
    iget-boolean v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_13

    .line 506
    .line 507
    const/4 v2, 0x0

    .line 508
    cmpg-float v1, v1, v2

    .line 509
    .line 510
    if-gez v1, :cond_13

    .line 511
    .line 512
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 513
    .line 514
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 515
    .line 516
    if-eq v1, v2, :cond_13

    .line 517
    .line 518
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 519
    .line 520
    if-eq v1, v2, :cond_13

    .line 521
    .line 522
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 523
    .line 524
    if-eq v1, v2, :cond_13

    .line 525
    .line 526
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->S:Z

    .line 527
    .line 528
    if-eqz v1, :cond_12

    .line 529
    .line 530
    const/4 v1, 0x0

    .line 531
    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O0:Ljava/lang/Runnable;

    .line 532
    .line 533
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 534
    .line 535
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 536
    .line 537
    neg-int v2, v2

    .line 538
    invoke-interface {v1, v2}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 539
    .line 540
    .line 541
    :cond_12
    const/4 v1, 0x0

    .line 542
    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 543
    .line 544
    .line 545
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 546
    .line 547
    new-instance v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$f;

    .line 548
    .line 549
    invoke-direct {v2, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$f;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V

    .line 550
    .line 551
    .line 552
    iget v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    .line 553
    .line 554
    int-to-long v3, v3

    .line 555
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    .line 557
    .line 558
    :cond_13
    return-void
.end method

.method protected x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p0, v0, p1}, Lvc/h;->d(Lsc/f;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v2, p0, v0, p1}, Lvc/h;->d(Lsc/f;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I0:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 32
    .line 33
    if-eq p1, v0, :cond_3

    .line 34
    .line 35
    iput-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method protected y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w:I

    .line 8
    .line 9
    const/16 v1, -0x3e8

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    if-le v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {v0, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_f

    .line 34
    .line 35
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e:I

    .line 36
    .line 37
    int-to-long v1, v1

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 44
    .line 45
    if-eqz v0, :cond_f

    .line 46
    .line 47
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 48
    .line 49
    invoke-interface {v0}, Lsc/e;->e()Lsc/e;

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-eq v0, v1, :cond_d

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->U:Z

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 72
    .line 73
    if-gez v0, :cond_2

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->s(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 86
    .line 87
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 88
    .line 89
    if-ne v0, v3, :cond_4

    .line 90
    .line 91
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 92
    .line 93
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 94
    .line 95
    if-le v0, v1, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_3
    if-gez v0, :cond_f

    .line 105
    .line 106
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 107
    .line 108
    invoke-interface {v0, v2}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_4
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 114
    .line 115
    if-ne v0, v4, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 118
    .line 119
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 120
    .line 121
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_5
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 127
    .line 128
    if-ne v0, v4, :cond_6

    .line 129
    .line 130
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 131
    .line 132
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 133
    .line 134
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_6
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 140
    .line 141
    if-ne v0, v4, :cond_7

    .line 142
    .line 143
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 144
    .line 145
    invoke-interface {v0, v3}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    sget-object v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 150
    .line 151
    if-ne v0, v3, :cond_8

    .line 152
    .line 153
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 154
    .line 155
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 160
    .line 161
    if-ne v0, v1, :cond_9

    .line 162
    .line 163
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 164
    .line 165
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 166
    .line 167
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 172
    .line 173
    if-ne v0, v1, :cond_a

    .line 174
    .line 175
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    if-nez v0, :cond_f

    .line 178
    .line 179
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 180
    .line 181
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j0:I

    .line 182
    .line 183
    invoke-interface {v0, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_a
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 188
    .line 189
    if-ne v0, v1, :cond_b

    .line 190
    .line 191
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 192
    .line 193
    if-nez v0, :cond_f

    .line 194
    .line 195
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 196
    .line 197
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 198
    .line 199
    neg-int v1, v1

    .line 200
    invoke-interface {v0, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_b
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 205
    .line 206
    if-ne v0, v1, :cond_c

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_c
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 210
    .line 211
    if-eqz v0, :cond_f

    .line 212
    .line 213
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 214
    .line 215
    invoke-interface {v0, v2}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_d
    :goto_0
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 220
    .line 221
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 222
    .line 223
    neg-int v3, v1

    .line 224
    if-ge v0, v3, :cond_e

    .line 225
    .line 226
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 227
    .line 228
    neg-int v1, v1

    .line 229
    invoke-interface {v0, v1}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_e
    if-lez v0, :cond_f

    .line 234
    .line 235
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 236
    .line 237
    invoke-interface {v0, v2}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 238
    .line 239
    .line 240
    :cond_f
    :goto_1
    return-void
.end method

.method public z(Z)Lsc/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->L:Z

    .line 2
    .line 3
    return-object p0
.end method
