.class public Lsm/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lsm/q;->a:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static A(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static B(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static C(III)Landroid/view/MotionEvent;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    int-to-float v5, p1

    .line 10
    int-to-float v6, p2

    .line 11
    const/4 v7, 0x0

    .line 12
    move v4, p0

    .line 13
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static D(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lsm/q;->a:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static E(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsm/q;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static F(II)I
    .locals 0

    .line 1
    if-le p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    :goto_0
    return p0
.end method

.method public static G(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "UNKNOWN"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "LANDSCAPE"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "PORTRAIT"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "UNDEFINED"

    .line 19
    .line 20
    return-object p0
.end method

.method public static H(FF)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsm/q;->c(FF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/high16 p1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr p0, p1

    .line 8
    float-to-int p0, p0

    .line 9
    return p0
.end method

.method public static I(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsm/q;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static J(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public static K(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lsm/q;->L(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static L(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Utils"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    new-array p0, p0, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string p1, "url is null or empty"

    .line 13
    .line 14
    invoke-static {v1, p1, p0}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    new-instance v0, Lsm/p;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lsm/p;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-static {v1, p0}, Lio/bidmachine/iab/utils/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public static M(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ","

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static N(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsm/q;->g(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Ljava/util/Random;FF)D
    .locals 10
    .param p0    # Ljava/util/Random;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x186a0

    .line 6
    .line 7
    .line 8
    rem-long/2addr v0, v2

    .line 9
    const-wide/16 v4, 0x1

    .line 10
    .line 11
    add-long/2addr v0, v4

    .line 12
    long-to-double v0, v0

    .line 13
    const-wide v6, 0x40f86a0000000000L    # 100000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    div-double/2addr v0, v6

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    rem-long/2addr v8, v2

    .line 28
    add-long/2addr v8, v4

    .line 29
    long-to-double v2, v8

    .line 30
    div-double/2addr v2, v6

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 40
    .line 41
    mul-double/2addr v0, v4

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    mul-double/2addr v2, v4

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    mul-double/2addr v0, v2

    .line 57
    float-to-double v2, p2

    .line 58
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmpl-double p0, v2, v4

    .line 64
    .line 65
    if-ltz p0, :cond_0

    .line 66
    .line 67
    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmpg-double p0, v2, v6

    .line 73
    .line 74
    if-gtz p0, :cond_0

    .line 75
    .line 76
    float-to-double p0, p1

    .line 77
    mul-double/2addr v0, p0

    .line 78
    add-double/2addr v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    cmpg-double p0, v2, v4

    .line 81
    .line 82
    if-gez p0, :cond_1

    .line 83
    .line 84
    float-to-double p0, p1

    .line 85
    mul-double/2addr v0, v0

    .line 86
    div-double/2addr p0, v0

    .line 87
    add-double v0, v2, p0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    float-to-double p0, p1

    .line 91
    mul-double/2addr v0, v0

    .line 92
    div-double/2addr p0, v0

    .line 93
    sub-double v0, v2, p0

    .line 94
    .line 95
    :goto_0
    const-wide/16 p0, 0x0

    .line 96
    .line 97
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 98
    .line 99
    .line 100
    move-result-wide p0

    .line 101
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 102
    .line 103
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 104
    .line 105
    .line 106
    move-result-wide p0

    .line 107
    return-wide p0
.end method

.method private static c(FF)F
    .locals 0

    .line 1
    div-float/2addr p0, p1

    .line 2
    return p0
.end method

.method private static d(I)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/high16 p0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 17
    .line 18
    return p0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/view/View;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private static f(Landroid/view/Window;Z)V
    .locals 2
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/foundation/layout/d;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    invoke-static {p0, v0}, Landroidx/core/view/i2;->a(Landroid/view/WindowInsetsController;I)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-static {}, Landroidx/core/view/y1;->a()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p0, p1}, Landroidx/core/view/c0;->a(Landroid/view/WindowInsetsController;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/16 p1, 0x400

    .line 35
    .line 36
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_0
    if-lez p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic g(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Utils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "Connection to URL: %s"

    .line 5
    .line 6
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static {v0, v2, v3}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/net/URL;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x1388

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 31
    .line 32
    .line 33
    const-string v1, "Connection"

    .line 34
    .line 35
    const-string v3, "close"

    .line 36
    .line 37
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "GET"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lpp/f;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    const-string v3, "User-Agent"

    .line 56
    .line 57
    invoke-virtual {v2, v3, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    move-object v1, v2

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception v1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v3, "Response code: %d, for URL: %s"

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v3, v1}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    goto :goto_3

    .line 86
    :catch_1
    move-exception v2

    .line 87
    move-object v5, v2

    .line 88
    move-object v2, v1

    .line 89
    move-object v1, v5

    .line 90
    :goto_1
    :try_start_2
    const-string v3, "%s: %s: %s"

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    filled-new-array {p0, v4, v1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, v3, p0}, Lio/bidmachine/iab/utils/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-static {v2}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :goto_3
    invoke-static {v1}, Lbr/a;->a(Ljava/net/HttpURLConnection;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public static h(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lsm/q;->i(Landroid/app/Activity;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static i(Landroid/app/Activity;Z)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x80

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lsm/q;->f(Landroid/view/Window;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lsm/q;->e(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lsm/q;->k(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x1020002

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lsm/q;->k(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .line 1
    invoke-static {}, Lcom/applovin/impl/g9;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroidx/core/view/e2;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    invoke-static {p0, v0}, Lsm/q;->l(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static l(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .line 1
    new-instance v0, Lsm/q$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lsm/q$a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static m(I)F
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x50

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 19
    .line 20
    return p0
.end method

.method public static n(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsm/q;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static o(Ljava/io/Closeable;)V
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    const-string v0, "Utils"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lio/bidmachine/iab/utils/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "px"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static q(Landroid/content/Context;F)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    float-to-int p0, p0

    .line 15
    return p0
.end method

.method public static r(Ljava/io/Flushable;)V
    .locals 1
    .param p0    # Ljava/io/Flushable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    const-string v0, "Utils"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lio/bidmachine/iab/utils/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public static s()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static t(IIII)Landroid/graphics/Point;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lsm/q;->d(I)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const v1, 0x3dcccccd    # 0.1f

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Lsm/q;->b(Ljava/util/Random;FF)D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {p3}, Lsm/q;->m(I)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {v0, v1, p2}, Lsm/q;->b(Ljava/util/Random;FF)D

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    new-instance v0, Landroid/graphics/Point;

    .line 26
    .line 27
    int-to-double v4, p0

    .line 28
    mul-double/2addr v4, v2

    .line 29
    double-to-int p0, v4

    .line 30
    int-to-double v1, p1

    .line 31
    mul-double/2addr v1, p2

    .line 32
    double-to-int p1, v1

    .line 33
    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static u(II)Landroid/graphics/Point;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    mul-float/2addr p0, v1

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-float p1, p1

    .line 12
    const v1, 0x3f333333    # 0.7f

    .line 13
    .line 14
    .line 15
    mul-float/2addr p1, v1

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static v(Landroid/content/Context;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne p0, v4, :cond_1

    .line 33
    .line 34
    if-eq v0, v3, :cond_0

    .line 35
    .line 36
    if-eq v0, v2, :cond_0

    .line 37
    .line 38
    return v4

    .line 39
    :cond_0
    return v1

    .line 40
    :cond_1
    if-ne p0, v3, :cond_3

    .line 41
    .line 42
    if-eq v0, v3, :cond_2

    .line 43
    .line 44
    if-eq v0, v2, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_2
    const/16 p0, 0x8

    .line 49
    .line 50
    return p0

    .line 51
    :cond_3
    return v1
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lsm/q;->v(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0xb

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "Testing connectivity:"

    .line 5
    .line 6
    const-string v3, "Utils"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "connectivity"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    new-array p0, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v0, "Connected to Internet"

    .line 36
    .line 37
    invoke-static {v3, v0, p0}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string v1, "No Internet connection"

    .line 45
    .line 46
    invoke-static {v3, v1, p0}, Lio/bidmachine/iab/utils/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return v0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 13
    .line 14
    div-float/2addr v0, v1

    .line 15
    float-to-double v0, v0

    .line 16
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 20
    .line 21
    div-float/2addr v2, p0

    .line 22
    float-to-double v2, v2

    .line 23
    mul-double/2addr v0, v0

    .line 24
    mul-double/2addr v2, v2

    .line 25
    add-double/2addr v0, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide v2, 0x401a666666666666L    # 6.6

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpl-double p0, v0, v2

    .line 36
    .line 37
    if-ltz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p0, p0, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method
