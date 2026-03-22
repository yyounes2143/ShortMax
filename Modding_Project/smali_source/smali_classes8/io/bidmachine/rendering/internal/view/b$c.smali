.class Lio/bidmachine/rendering/internal/view/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 10
    .line 11
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 12
    .line 13
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method a()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 2
    .line 3
    iget-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 10
    .line 11
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 9
    .line 10
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 6
    .line 7
    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->e()Z

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
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 13
    .line 14
    sub-long v2, v0, v2

    .line 15
    .line 16
    iget-wide v4, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 17
    .line 18
    iget-wide v6, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 19
    .line 20
    add-long/2addr v6, v2

    .line 21
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iput-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 26
    .line 27
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    .line 28
    .line 29
    return-void
.end method
