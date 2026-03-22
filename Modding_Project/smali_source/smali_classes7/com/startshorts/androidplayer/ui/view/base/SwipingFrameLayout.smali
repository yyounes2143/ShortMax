.class public abstract Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;
.source "SwipingFrameLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$a;,
        Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:I

.field private d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private final r:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->u:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->c:I

    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->j:I

    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->k:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->l:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 7
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->c:I

    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->j:I

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->k:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 13
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->l:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 15
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->c:I

    .line 19
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->j:I

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->k:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 21
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->l:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 23
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->s:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    .line 11
    .line 12
    return-void
.end method

.method private static final o(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final p()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/base/e;

    .line 7
    .line 8
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/view/base/e;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/base/f;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lcom/startshorts/androidplayer/ui/view/base/f;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, 0x3e8

    .line 17
    .line 18
    const-wide/16 v3, 0x32

    .line 19
    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->e(JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m:Lkotlinx/coroutines/r;

    .line 25
    .line 26
    return-void
.end method

.method private static final q(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;J)Lkotlin/Unit;
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    const-wide/16 p1, 0xfa

    .line 5
    .line 6
    cmp-long p1, v0, p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 20
    .line 21
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->g()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private static final r(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->l:I

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 21
    .line 22
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->j()V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->p:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m:Lkotlinx/coroutines/r;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v1, v4, :cond_1

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lid/a;->a:Lid/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "ignore -> validPointId("

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, ") invalid("

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "SwipingFrameLayout"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return v3

    .line 70
    :cond_1
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_15

    .line 78
    .line 79
    if-eq v0, v3, :cond_9

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    if-eq v0, v5, :cond_5

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    if-eq v0, v5, :cond_4

    .line 86
    .line 87
    const/4 v5, 0x5

    .line 88
    if-eq v0, v5, :cond_2

    .line 89
    .line 90
    const/4 v5, 0x6

    .line 91
    if-eq v0, v5, :cond_9

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->h()V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 114
    .line 115
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n()V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    float-to-int v0, v0

    .line 135
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->g:I

    .line 136
    .line 137
    sub-int/2addr v1, v0

    .line 138
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->g:I

    .line 139
    .line 140
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->f:I

    .line 141
    .line 142
    sub-int v2, v0, v2

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->c:I

    .line 149
    .line 150
    if-le v2, v4, :cond_6

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    float-to-int v2, v2

    .line 157
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->i:I

    .line 158
    .line 159
    sub-int/2addr v2, v4

    .line 160
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->c:I

    .line 165
    .line 166
    if-ge v2, v4, :cond_6

    .line 167
    .line 168
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->b:Z

    .line 169
    .line 170
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 171
    .line 172
    if-nez v2, :cond_6

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->f:I

    .line 178
    .line 179
    sub-int/2addr v0, v2

    .line 180
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ltz v0, :cond_7

    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->b:Z

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 191
    .line 192
    add-int/2addr v0, v1

    .line 193
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 194
    .line 195
    :cond_7
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->b:Z

    .line 196
    .line 197
    if-eqz v0, :cond_16

    .line 198
    .line 199
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 200
    .line 201
    if-eqz v0, :cond_16

    .line 202
    .line 203
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->p:Z

    .line 204
    .line 205
    if-nez v0, :cond_8

    .line 206
    .line 207
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->p:Z

    .line 208
    .line 209
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->e:Landroid/view/MotionEvent;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->a(Landroid/view/MotionEvent;)V

    .line 218
    .line 219
    .line 220
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 221
    .line 222
    if-eqz v0, :cond_16

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->b(Landroid/view/MotionEvent;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_9
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->b:Z

    .line 230
    .line 231
    iput v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->q:I

    .line 232
    .line 233
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->e:Landroid/view/MotionEvent;

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 238
    .line 239
    .line 240
    :cond_a
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->e:Landroid/view/MotionEvent;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-le v4, v3, :cond_b

    .line 248
    .line 249
    return v3

    .line 250
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v5, "ACTION_UP -> mFirstLongClick("

    .line 256
    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 261
    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v5, ") mSecondLongClick("

    .line 266
    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;->c(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n:Z

    .line 286
    .line 287
    if-nez v2, :cond_f

    .line 288
    .line 289
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 290
    .line 291
    if-eqz v2, :cond_c

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_c
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 295
    .line 296
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->j:I

    .line 301
    .line 302
    if-lt v2, v4, :cond_e

    .line 303
    .line 304
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 311
    .line 312
    if-lez v4, :cond_d

    .line 313
    .line 314
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->f:I

    .line 315
    .line 316
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->k:I

    .line 317
    .line 318
    sub-int v5, v2, v5

    .line 319
    .line 320
    if-lt v4, v5, :cond_12

    .line 321
    .line 322
    if-gt v4, v2, :cond_12

    .line 323
    .line 324
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 325
    .line 326
    if-eqz v2, :cond_12

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->l()V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_d
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->f:I

    .line 333
    .line 334
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->k:I

    .line 335
    .line 336
    if-gt v2, v4, :cond_12

    .line 337
    .line 338
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 339
    .line 340
    if-eqz v2, :cond_12

    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->k()V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_e
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 347
    .line 348
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->l:I

    .line 353
    .line 354
    if-gt v2, v4, :cond_12

    .line 355
    .line 356
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 357
    .line 358
    if-eqz v2, :cond_12

    .line 359
    .line 360
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->f()V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_f
    :goto_0
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->o:Z

    .line 365
    .line 366
    if-eqz v2, :cond_10

    .line 367
    .line 368
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 369
    .line 370
    if-eqz v2, :cond_11

    .line 371
    .line 372
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->e()V

    .line 373
    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 377
    .line 378
    if-eqz v2, :cond_11

    .line 379
    .line 380
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->d()V

    .line 381
    .line 382
    .line 383
    :cond_11
    :goto_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 384
    .line 385
    if-eqz v2, :cond_12

    .line 386
    .line 387
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->c(Landroid/view/MotionEvent;)V

    .line 388
    .line 389
    .line 390
    :cond_12
    :goto_2
    iput v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->h:I

    .line 391
    .line 392
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 404
    .line 405
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 406
    .line 407
    .line 408
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-nez p1, :cond_13

    .line 415
    .line 416
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->n()V

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->s:Landroid/os/Handler;

    .line 421
    .line 422
    if-eqz p1, :cond_14

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    :cond_14
    new-instance p1, Landroid/os/Handler;

    .line 428
    .line 429
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 434
    .line 435
    .line 436
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->s:Landroid/os/Handler;

    .line 437
    .line 438
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/d;

    .line 439
    .line 440
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/base/d;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;)V

    .line 441
    .line 442
    .line 443
    const-wide/16 v1, 0x32

    .line 444
    .line 445
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_15
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->t:Z

    .line 450
    .line 451
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->e:Landroid/view/MotionEvent;

    .line 456
    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    float-to-int v0, v0

    .line 462
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->f:I

    .line 463
    .line 464
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->g:I

    .line 465
    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    float-to-int v0, v0

    .line 471
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->i:I

    .line 472
    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->r:Landroid/util/SparseBooleanArray;

    .line 482
    .line 483
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 484
    .line 485
    .line 486
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->p()V

    .line 487
    .line 488
    .line 489
    :cond_16
    :goto_3
    return v3
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->d:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 2
    .line 3
    return-void
.end method
