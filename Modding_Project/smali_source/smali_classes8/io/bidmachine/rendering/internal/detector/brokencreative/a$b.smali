.class final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;
.super Lcr/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:D

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liq/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lrq/l;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrq/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;DLjava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "D",
            "Ljava/util/List<",
            "+",
            "Liq/a;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lrq/l;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "screenshotCallbackHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "algorithms"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcr/b;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b:Landroid/os/Handler;

    .line 25
    .line 26
    iput-wide p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->c:D

    .line 27
    .line 28
    iput-object p5, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->d:Ljava/util/List;

    .line 29
    .line 30
    iput-object p6, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    new-instance p2, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 33
    .line 34
    new-instance p3, Lgt/f0;

    .line 35
    .line 36
    const-string p4, "DetectorTaskManager"

    .line 37
    .line 38
    invoke-direct {p3, p4}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p4, 0x0

    .line 42
    const/4 p5, 0x1

    .line 43
    invoke-static {p4, p5, p4}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p3, p4}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-interface {p3, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-static {p3}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-direct {p2, p3}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lgt/g0;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 81
    .line 82
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->i:Ljava/util/List;

    .line 88
    .line 89
    return-void
.end method

.method private final e(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lyq/f;->g(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->c:D

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lyq/f;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Lyq/f;->g(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->k()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lyq/f;->g(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->d:Ljava/util/List;

    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Liq/a;

    .line 64
    .line 65
    new-instance v3, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 66
    .line 67
    new-instance v4, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;

    .line 68
    .line 69
    invoke-direct {v4, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v2, v0, v4}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;-><init>(Liq/a;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 99
    .line 100
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 101
    .line 102
    invoke-interface {v1, v0}, Lcr/c;->b(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    return-void
.end method

.method private final f(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->l()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final g(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic h(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lrq/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcr/b;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method private final l()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->i:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcr/b;->a(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 23
    .line 24
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcr/a;->cancel(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lmq/a;->a:Lmq/a;

    .line 13
    .line 14
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v3, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0, v2, v3}, Lmq/a;->a(Landroid/view/View;Landroid/os/Handler;Lmq/b;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
