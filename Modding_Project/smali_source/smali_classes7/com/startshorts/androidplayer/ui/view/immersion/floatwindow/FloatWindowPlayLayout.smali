.class public final Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;
.super Landroid/view/TextureView;
.source "FloatWindowPlayLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;,
        Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:F

.field private f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string p2, "FloatWindowPlayLayout"

    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a:Ljava/lang/String;

    .line 6
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;

    invoke-direct {p3, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method private final f()V
    .locals 3

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "onDown"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final g(F)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 3
    .line 4
    sget-object v0, Lid/a;->a:Lid/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "onScale:"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->b(F)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method private final h()V
    .locals 3

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "onUp"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->onUp()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final i(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sub-float/2addr v1, v3

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sub-float/2addr v0, p1

    .line 21
    mul-float/2addr v1, v1

    .line 22
    mul-float/2addr v0, v0

    .line 23
    add-float/2addr v1, v0

    .line 24
    float-to-double v0, v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    double-to-float p1, v0

    .line 30
    return p1
.end method


# virtual methods
.method public final getListener()Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    if-eq v0, v1, :cond_5

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v3, v2, :cond_8

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 29
    .line 30
    if-nez v2, :cond_8

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->i(Landroid/view/MotionEvent;)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->e:F

    .line 37
    .line 38
    const/high16 v2, 0x40a00000    # 5.0f

    .line 39
    .line 40
    cmpl-float p1, p1, v2

    .line 41
    .line 42
    if-lez p1, :cond_8

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v3, v2, :cond_4

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->i(Landroid/view/MotionEvent;)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->e:F

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    cmpg-float v4, v3, v4

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    cmpg-float v4, v3, v2

    .line 70
    .line 71
    if-nez v4, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    div-float v3, v2, v3

    .line 75
    .line 76
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->e:F

    .line 77
    .line 78
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->g(F)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 82
    .line 83
    if-nez v2, :cond_8

    .line 84
    .line 85
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b:Landroid/view/GestureDetector;

    .line 86
    .line 87
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 92
    .line 93
    if-nez v2, :cond_6

    .line 94
    .line 95
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b:Landroid/view/GestureDetector;

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    .line 99
    .line 100
    :cond_6
    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d:Z

    .line 102
    .line 103
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c:Z

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f()V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b:Landroid/view/GestureDetector;

    .line 110
    .line 111
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_1
    if-eq v0, v1, :cond_9

    .line 115
    .line 116
    const/4 p1, 0x3

    .line 117
    if-eq v0, p1, :cond_9

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->h()V

    .line 121
    .line 122
    .line 123
    :goto_2
    return v1
.end method

.method public final setListener(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->f:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 2
    .line 3
    return-void
.end method
