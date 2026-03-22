.class public final Lio/bidmachine/media3/exoplayer/k1;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/k1$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:F

.field public final c:J


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/k1$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/k1$b;->a(Lio/bidmachine/media3/exoplayer/k1$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/k1;->a:J

    .line 4
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/k1$b;->b(Lio/bidmachine/media3/exoplayer/k1$b;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/k1;->b:F

    .line 5
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/k1$b;->c(Lio/bidmachine/media3/exoplayer/k1$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/k1;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/k1$b;Lio/bidmachine/media3/exoplayer/k1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/k1;-><init>(Lio/bidmachine/media3/exoplayer/k1$b;)V

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/media3/exoplayer/k1$b;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/k1$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/k1$b;-><init>(Lio/bidmachine/media3/exoplayer/k1;Lio/bidmachine/media3/exoplayer/k1$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/k1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lio/bidmachine/media3/exoplayer/k1;

    .line 12
    .line 13
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/k1;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/k1;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget v1, p0, Lio/bidmachine/media3/exoplayer/k1;->b:F

    .line 22
    .line 23
    iget v3, p1, Lio/bidmachine/media3/exoplayer/k1;->b:F

    .line 24
    .line 25
    cmpl-float v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/k1;->c:J

    .line 30
    .line 31
    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/k1;->c:J

    .line 32
    .line 33
    cmp-long p1, v3, v5

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/k1;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lio/bidmachine/media3/exoplayer/k1;->b:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/k1;->c:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method
