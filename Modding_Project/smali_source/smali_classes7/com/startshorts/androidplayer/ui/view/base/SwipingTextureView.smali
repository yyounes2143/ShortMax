.class public final Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;
.super Landroid/view/TextureView;
.source "SwipingTextureView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$a;,
        Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Z

.field private final b:I

.field private c:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private r:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->t:Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$a;

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
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->b:I

    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->h:I

    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->i:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 7
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

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
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->b:I

    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->h:I

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->i:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 13
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 15
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->b:I

    .line 19
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->h:I

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->i:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 21
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 23
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->g(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->k(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->h(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->r:Landroid/os/Handler;

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
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

    .line 11
    .line 12
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->o:I

    .line 15
    .line 16
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final i()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/base/i;

    .line 7
    .line 8
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/view/base/i;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/base/j;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lcom/startshorts/androidplayer/ui/view/base/j;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->k:Lkotlinx/coroutines/r;

    .line 25
    .line 26
    return-void
.end method

.method private static final j(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;J)Lkotlin/Unit;
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
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final k(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j:I

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->m:Z

    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->m:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->n:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->k:Lkotlinx/coroutines/r;

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->k:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lid/a;->a:Lid/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "ignore -> validPointId("

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ") invalid("

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v0, 0x29

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "SwipingTextureView"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return v2

    .line 70
    :cond_1
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

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
    if-eqz v0, :cond_f

    .line 78
    .line 79
    if-eq v0, v2, :cond_7

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    if-eq v0, v4, :cond_4

    .line 83
    .line 84
    const/4 v4, 0x3

    .line 85
    if-eq v0, v4, :cond_3

    .line 86
    .line 87
    const/4 v4, 0x5

    .line 88
    if-eq v0, v4, :cond_2

    .line 89
    .line 90
    const/4 v4, 0x6

    .line 91
    if-eq v0, v4, :cond_7

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    .line 107
    .line 108
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    float-to-int v0, v0

    .line 128
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e:I

    .line 129
    .line 130
    sub-int/2addr v1, v0

    .line 131
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e:I

    .line 132
    .line 133
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->d:I

    .line 134
    .line 135
    sub-int v3, v0, v3

    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->b:I

    .line 142
    .line 143
    if-le v3, v4, :cond_5

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    float-to-int p1, p1

    .line 150
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->g:I

    .line 151
    .line 152
    sub-int/2addr p1, v3

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->b:I

    .line 158
    .line 159
    if-ge p1, v3, :cond_5

    .line 160
    .line 161
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->a:Z

    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 164
    .line 165
    if-nez p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e()V

    .line 168
    .line 169
    .line 170
    :cond_5
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->d:I

    .line 171
    .line 172
    sub-int/2addr v0, p1

    .line 173
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-ltz p1, :cond_6

    .line 178
    .line 179
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->a:Z

    .line 180
    .line 181
    if-eqz p1, :cond_6

    .line 182
    .line 183
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 184
    .line 185
    add-int/2addr p1, v1

    .line 186
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 187
    .line 188
    :cond_6
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->a:Z

    .line 189
    .line 190
    if-eqz p1, :cond_10

    .line 191
    .line 192
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 193
    .line 194
    if-eqz p1, :cond_10

    .line 195
    .line 196
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->n:Z

    .line 197
    .line 198
    if-nez p1, :cond_10

    .line 199
    .line 200
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->n:Z

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_7
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->a:Z

    .line 205
    .line 206
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->p:I

    .line 207
    .line 208
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->c:Landroid/view/MotionEvent;

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 213
    .line 214
    .line 215
    :cond_8
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->c:Landroid/view/MotionEvent;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-le v3, v2, :cond_9

    .line 223
    .line 224
    return v2

    .line 225
    :cond_9
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->l:Z

    .line 226
    .line 227
    if-nez v3, :cond_c

    .line 228
    .line 229
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->m:Z

    .line 230
    .line 231
    if-eqz v3, :cond_a

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_a
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 235
    .line 236
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->h:I

    .line 241
    .line 242
    if-lt v3, v4, :cond_b

    .line 243
    .line 244
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_b
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 251
    .line 252
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->j:I

    .line 257
    .line 258
    if-gt v3, v4, :cond_c

    .line 259
    .line 260
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->o:I

    .line 261
    .line 262
    add-int/2addr v3, v2

    .line 263
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->o:I

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-eqz v3, :cond_c

    .line 270
    .line 271
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/base/g;

    .line 272
    .line 273
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/view/base/g;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

    .line 274
    .line 275
    .line 276
    const-wide/16 v5, 0xfa

    .line 277
    .line 278
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    .line 280
    .line 281
    :cond_c
    :goto_0
    iput v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f:I

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    .line 295
    .line 296
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-nez p1, :cond_d

    .line 306
    .line 307
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->f()V

    .line 308
    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_d
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->r:Landroid/os/Handler;

    .line 312
    .line 313
    if-eqz p1, :cond_e

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_e
    new-instance p1, Landroid/os/Handler;

    .line 319
    .line 320
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    .line 326
    .line 327
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->r:Landroid/os/Handler;

    .line 328
    .line 329
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/h;

    .line 330
    .line 331
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/base/h;-><init>(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V

    .line 332
    .line 333
    .line 334
    const-wide/16 v3, 0x32

    .line 335
    .line 336
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :cond_f
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->s:Z

    .line 341
    .line 342
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->c:Landroid/view/MotionEvent;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    float-to-int v0, v0

    .line 353
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->d:I

    .line 354
    .line 355
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->e:I

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    float-to-int v0, v0

    .line 362
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->g:I

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->q:Landroid/util/SparseBooleanArray;

    .line 373
    .line 374
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;->i()V

    .line 378
    .line 379
    .line 380
    :cond_10
    :goto_1
    return v2
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
