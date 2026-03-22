.class public final Lcom/facebook/internal/b1;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/b1$a;,
        Lcom/facebook/internal/b1$b;,
        Lcom/facebook/internal/b1$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\ncom/facebook/internal/WorkQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lcom/facebook/internal/b1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lcom/facebook/internal/b1$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/internal/b1$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/b1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/b1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/b1;->g:Lcom/facebook/internal/b1$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/internal/b1;->a:I

    .line 3
    iput-object p2, p0, Lcom/facebook/internal/b1;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/b1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x8

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/b1;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/internal/b1$c;Lcom/facebook/internal/b1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/internal/b1;->h(Lcom/facebook/internal/b1$c;Lcom/facebook/internal/b1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/facebook/internal/b1;)Lcom/facebook/internal/b1$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/facebook/internal/b1;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/internal/b1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/facebook/internal/b1;Lcom/facebook/internal/b1$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic f(Lcom/facebook/internal/b1;Ljava/lang/Runnable;ZILjava/lang/Object;)Lcom/facebook/internal/b1$b;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/b1;->e(Ljava/lang/Runnable;Z)Lcom/facebook/internal/b1$b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final g(Lcom/facebook/internal/b1$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b1;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/internal/a1;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0}, Lcom/facebook/internal/a1;-><init>(Lcom/facebook/internal/b1$c;Lcom/facebook/internal/b1;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final h(Lcom/facebook/internal/b1$c;Lcom/facebook/internal/b1;)V
    .locals 1

    .line 1
    const-string v0, "$node"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/b1$c;->c()Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/facebook/internal/b1;->i(Lcom/facebook/internal/b1$c;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-direct {p1, p0}, Lcom/facebook/internal/b1;->i(Lcom/facebook/internal/b1$c;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method private final i(Lcom/facebook/internal/b1$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/facebook/internal/b1;->e:Lcom/facebook/internal/b1$c;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/facebook/internal/b1$c;->e(Lcom/facebook/internal/b1$c;)Lcom/facebook/internal/b1$c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/facebook/internal/b1;->e:Lcom/facebook/internal/b1$c;

    .line 15
    .line 16
    iget p1, p0, Lcom/facebook/internal/b1;->f:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/facebook/internal/b1;->f:I

    .line 21
    .line 22
    :cond_0
    iget p1, p0, Lcom/facebook/internal/b1;->f:I

    .line 23
    .line 24
    iget v0, p0, Lcom/facebook/internal/b1;->a:I

    .line 25
    .line 26
    if-ge p1, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p1}, Lcom/facebook/internal/b1$c;->e(Lcom/facebook/internal/b1$c;)Lcom/facebook/internal/b1$c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/facebook/internal/b1;->e:Lcom/facebook/internal/b1$c;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/b1$c;->b(Lcom/facebook/internal/b1$c;Z)Lcom/facebook/internal/b1$c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/facebook/internal/b1;->e:Lcom/facebook/internal/b1$c;

    .line 46
    .line 47
    iget v0, p0, Lcom/facebook/internal/b1;->f:I

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/facebook/internal/b1;->f:I

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/facebook/internal/b1$c;->f(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/b1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/internal/b1;->g(Lcom/facebook/internal/b1$c;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/internal/b1;->i(Lcom/facebook/internal/b1$c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;Z)Lcom/facebook/internal/b1$b;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/internal/b1$c;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/b1$c;-><init>(Lcom/facebook/internal/b1;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/facebook/internal/b1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/b1$c;->b(Lcom/facebook/internal/b1$c;Z)Lcom/facebook/internal/b1$c;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/facebook/internal/b1;->d:Lcom/facebook/internal/b1$c;

    .line 23
    .line 24
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/facebook/internal/b1;->j()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p2
.end method
