.class public final Ldf/e;
.super Ljava/lang/Object;
.source "FloatViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/e$a;,
        Ldf/e$b;,
        Ldf/e$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Ldf/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ldf/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lef/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lef/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ldf/e$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:J

.field private g:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldf/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldf/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldf/e;->i:Ldf/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldf/e$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ldf/e$b;-><init>(Ldf/e;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldf/e;->a:Ldf/e$b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ldf/e$b;->c()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Ldf/e;->f:J

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Ldf/e;->q(Ldf/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ldf/e;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldf/e;->f(Ldf/e;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Ldf/e;->i(Ldf/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Ldf/e;->j(Ldf/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Ldf/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldf/c;-><init>(Ldf/e;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final f(Ldf/e;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldf/e;->d:Lef/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lef/c;->a(Ldf/e;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private static final i(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldf/e;->k()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final j(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldf/e;->k()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final q(Ldf/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldf/e;->k()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final g(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)Z
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "FloatViewManager"

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v3, "attachToWindow"

    .line 12
    .line 13
    invoke-virtual {v2, v0, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "getDecorView(...)"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    iget-object v3, p0, Ldf/e;->c:Lef/b;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move-object v4, v2

    .line 39
    check-cast v4, Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-interface {v3, p1, v4}, Lef/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    iput-object v3, p0, Ldf/e;->b:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v4, p0, Ldf/e;->a:Ldf/e$b;

    .line 54
    .line 55
    invoke-virtual {v4}, Ldf/e$b;->d()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 61
    .line 62
    .line 63
    :cond_2
    move-object v3, v2

    .line 64
    check-cast v3, Landroid/view/ViewGroup;

    .line 65
    .line 66
    iget-object v4, p0, Ldf/e;->b:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Ldf/e;->b:Landroid/view/View;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    check-cast v2, Landroid/view/ViewGroup;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v4, p0, Ldf/e;->a:Ldf/e$b;

    .line 82
    .line 83
    invoke-virtual {v4}, Ldf/e$b;->a()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ldf/e;->p()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v3}, Ldf/e;->e(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    instance-of v2, v3, Lef/a;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    check-cast v3, Lef/a;

    .line 105
    .line 106
    new-instance v2, Ldf/a;

    .line 107
    .line 108
    invoke-direct {v2, p0}, Ldf/a;-><init>(Ldf/e;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v2}, Lef/a;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    new-instance v2, Ldf/b;

    .line 115
    .line 116
    invoke-direct {v2, p0}, Ldf/b;-><init>(Ldf/e;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->w(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    return p1

    .line 124
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v4, "attachToWindow exception -> "

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return v1
.end method

.method public final h(Ldf/e$c;)Z
    .locals 3
    .param p1    # Ldf/e$c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 24
    .line 25
    :cond_1
    if-nez v1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_2
    iput-object p1, p0, Ldf/e;->e:Ldf/e$c;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ldf/e;->g(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final k()V
    .locals 6

    .line 1
    const-string v0, "FloatViewManager"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 4
    .line 5
    const-string v2, "detachFromWindow"

    .line 6
    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ldf/e;->m()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Ldf/e;->b:Landroid/view/View;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Ldf/e;->b:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    move-object v4, v1

    .line 35
    check-cast v4, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p0, Ldf/e;->a:Ldf/e$b;

    .line 42
    .line 43
    invoke-virtual {v5}, Ldf/e$b;->b()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v3, p0, Ldf/e;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-object v2, p0, Ldf/e;->b:Landroid/view/View;

    .line 62
    .line 63
    iget-object v1, p0, Ldf/e;->e:Ldf/e$c;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v1}, Ldf/e$c;->onDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "detachFromWindow exception -> "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_2
    return-void
.end method

.method public final l()Ldf/e$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ldf/e;->a:Ldf/e$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()V
    .locals 6

    .line 1
    iget-object v0, p0, Ldf/e;->a:Ldf/e$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldf/e$b;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Ldf/e;->h:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Ldf/e;->f:J

    .line 24
    .line 25
    iget-object v0, p0, Ldf/e;->g:Lkotlinx/coroutines/r;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object v1, p0, Ldf/e;->g:Lkotlinx/coroutines/r;

    .line 35
    .line 36
    return-void
.end method

.method public final n(Lef/b;)V
    .locals 0
    .param p1    # Lef/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Ldf/e;->c:Lef/b;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Lef/c;)V
    .locals 0
    .param p1    # Lef/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Ldf/e;->d:Lef/c;

    .line 2
    .line 3
    return-void
.end method

.method public final p()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Ldf/e;->h:J

    .line 8
    .line 9
    iget-object v0, p0, Ldf/e;->g:Lkotlinx/coroutines/r;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-wide v4, p0, Ldf/e;->f:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long v0, v4, v0

    .line 23
    .line 24
    if-gtz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ldf/e;->k()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 31
    .line 32
    new-instance v7, Ldf/d;

    .line 33
    .line 34
    invoke-direct {v7, p0}, Ldf/d;-><init>(Ldf/e;)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Ldf/e;->g:Lkotlinx/coroutines/r;

    .line 45
    .line 46
    :goto_0
    return-void
.end method
