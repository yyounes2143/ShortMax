.class final Lc6/b$a;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lc6/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lt5/t;

.field private b:Lt5/t$a;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lt5/t;Lt5/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc6/b$a;->a:Lt5/t;

    .line 5
    .line 6
    iput-object p2, p0, Lc6/b$a;->b:Lt5/t$a;

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    iput-wide p1, p0, Lc6/b$a;->c:J

    .line 11
    .line 12
    iput-wide p1, p0, Lc6/b$a;->d:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lt5/l;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lc6/b$a;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x2

    .line 12
    .line 13
    add-long/2addr v0, v4

    .line 14
    neg-long v0, v0

    .line 15
    iput-wide v2, p0, Lc6/b$a;->d:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    return-wide v2
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc6/b$a;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public createSeekMap()Lt5/z;
    .locals 4

    .line 1
    iget-wide v0, p0, Lc6/b$a;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

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
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lt5/s;

    .line 16
    .line 17
    iget-object v1, p0, Lc6/b$a;->a:Lt5/t;

    .line 18
    .line 19
    iget-wide v2, p0, Lc6/b$a;->c:J

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lt5/s;-><init>(Lt5/t;J)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public startSeek(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6/b$a;->b:Lt5/t$a;

    .line 2
    .line 3
    iget-object v0, v0, Lt5/t$a;->a:[J

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p1, p2, v1, v1}, Lb7/s0;->i([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    iput-wide p1, p0, Lc6/b$a;->d:J

    .line 13
    .line 14
    return-void
.end method
