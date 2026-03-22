.class final Lou/a$a;
.super Lku/f$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lou/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lpu/b;

.field private final b:Lru/a;

.field private final c:Lpu/b;

.field private final d:Lou/a$c;


# direct methods
.method constructor <init>(Lou/a$c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lku/f$a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpu/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lpu/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lou/a$a;->a:Lpu/b;

    .line 10
    .line 11
    new-instance v1, Lru/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lru/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lou/a$a;->b:Lru/a;

    .line 17
    .line 18
    new-instance v2, Lpu/b;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [Lku/j;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v0, v3, v4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-object v1, v3, v0

    .line 28
    .line 29
    invoke-direct {v2, v3}, Lpu/b;-><init>([Lku/j;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lou/a$a;->c:Lpu/b;

    .line 33
    .line 34
    iput-object p1, p0, Lou/a$a;->d:Lou/a$c;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Lmu/a;)Lku/j;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lou/a$a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lru/b;->a()Lku/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lou/a$a;->d:Lou/a$c;

    .line 13
    .line 14
    new-instance v1, Lou/a$a$a;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lou/a$a$a;-><init>(Lou/a$a;Lmu/a;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    iget-object v5, p0, Lou/a$a;->a:Lpu/b;

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Lou/b;->j(Lmu/a;JLjava/util/concurrent/TimeUnit;Lpu/b;)Lrx/internal/schedulers/ScheduledAction;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lou/a$a;->c:Lpu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpu/b;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lou/a$a;->c:Lpu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpu/b;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
