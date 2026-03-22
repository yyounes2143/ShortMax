.class Lbq/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:I

.field final synthetic d:Lbq/a;


# direct methods
.method public constructor <init>(Lbq/a;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lbq/a$a;->d:Lbq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lbq/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lbq/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    iput p2, p0, Lbq/a$a;->c:I

    .line 22
    .line 23
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbq/a;->c0()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lbq/a$a;->d:Lbq/a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lbq/a;->g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v3, v1, v3

    .line 19
    .line 20
    if-gtz v3, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    long-to-float v0, v3

    .line 28
    const/high16 v3, 0x42c80000    # 100.0f

    .line 29
    .line 30
    mul-float/2addr v0, v3

    .line 31
    long-to-float v1, v1

    .line 32
    div-float/2addr v0, v1

    .line 33
    iget-object v1, p0, Lbq/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v2, v1

    .line 40
    const/high16 v3, 0x41c80000    # 25.0f

    .line 41
    .line 42
    mul-float/2addr v2, v3

    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    sub-float/2addr v2, v3

    .line 46
    cmpl-float v0, v0, v2

    .line 47
    .line 48
    if-lez v0, :cond_7

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    if-eq v1, v0, :cond_5

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    if-eq v1, v0, :cond_4

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    if-eq v1, v0, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    if-eq v1, v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 66
    .line 67
    invoke-virtual {v0}, Lbq/a;->q()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lbq/a;->u()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 78
    .line 79
    invoke-virtual {v0}, Lbq/a;->s()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 84
    .line 85
    invoke-virtual {v0}, Lbq/a;->r()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 90
    .line 91
    invoke-virtual {v0}, Lbq/a;->t()V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v0, p0, Lbq/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 97
    .line 98
    .line 99
    :cond_7
    return-void
.end method

.method static synthetic c(Lbq/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbq/a$a;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbq/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic e(Lbq/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbq/a$a;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbq/a$a;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lbq/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic g(Lbq/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbq/a$a;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbq/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lsq/j;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbq/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lbq/a;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lbq/a$a;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lbq/a$a;->d:Lbq/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lbq/a;->c0()Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lbq/a;->I(Ljava/lang/Long;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lbq/a$a;->c:I

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    invoke-static {p0, v0, v1}, Lsq/j;->l(Ljava/lang/Runnable;J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
