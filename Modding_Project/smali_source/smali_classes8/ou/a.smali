.class public final Lou/a;
.super Lku/f;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lou/a$c;,
        Lou/a$a;,
        Lou/a$b;
    }
.end annotation


# static fields
.field static final b:I

.field static final c:Lou/a$c;

.field static final d:Lou/a$b;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lou/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "rx.scheduler.max-computation-threads"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    if-le v0, v2, :cond_1

    .line 23
    .line 24
    :cond_0
    move v0, v2

    .line 25
    :cond_1
    sput v0, Lou/a;->b:I

    .line 26
    .line 27
    new-instance v0, Lou/a$c;

    .line 28
    .line 29
    sget-object v2, Lrx/internal/util/RxThreadFactory;->b:Ljava/util/concurrent/ThreadFactory;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Lou/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lou/a;->c:Lou/a$c;

    .line 35
    .line 36
    invoke-virtual {v0}, Lou/b;->e()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lou/a$b;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v2, v1}, Lou/a$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lou/a;->d:Lou/a$b;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public a()Lku/f$a;
    .locals 2

    .line 1
    new-instance v0, Lou/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lou/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lou/a$b;

    .line 10
    .line 11
    invoke-virtual {v1}, Lou/a$b;->a()Lou/a$c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lou/a$a;-><init>(Lou/a$c;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public b(Lmu/a;)Lku/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lou/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lou/a$b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lou/a$b;->a()Lou/a$c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, -0x1

    .line 14
    .line 15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2, v3}, Lou/b;->i(Lmu/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
