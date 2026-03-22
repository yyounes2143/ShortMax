.class final La6/a;
.super Lt5/d;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements La6/g;


# direct methods
.method public constructor <init>(JJLq5/g0$a;Z)V
    .locals 8

    .line 1
    iget v5, p5, Lq5/g0$a;->f:I

    .line 2
    .line 3
    iget v6, p5, Lq5/g0$a;->c:I

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-wide v1, p1

    .line 7
    move-wide v3, p3

    .line 8
    move v7, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lt5/d;-><init>(JJIIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lt5/d;->c(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method
