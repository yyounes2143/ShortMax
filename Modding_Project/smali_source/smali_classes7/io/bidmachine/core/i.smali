.class public Lio/bidmachine/core/i;
.super Ljava/lang/Object;
.source "VisibilityParams.java"


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lio/bidmachine/core/i;->a:J

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v0, p0, Lio/bidmachine/core/i;->b:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/bidmachine/core/i;->c:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lio/bidmachine/core/i;->d:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/core/i;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/core/i;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/core/i;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/core/i;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/core/i;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/core/i;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/core/i;->b:F

    .line 2
    .line 3
    return-void
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/core/i;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public i(J)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/core/i;->h(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
