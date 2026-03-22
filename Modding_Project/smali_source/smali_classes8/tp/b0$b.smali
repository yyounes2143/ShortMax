.class abstract Ltp/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltp/b0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ltp/b0$b;-><init>()V

    return-void
.end method

.method private e()J
    .locals 4

    .line 1
    iget-wide v0, p0, Ltp/b0$b;->b:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ltp/b0$b;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ltp/b0$b;->a:J

    .line 6
    .line 7
    invoke-static {p0}, Lsq/j;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Ltp/b0$b;->a:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    add-long/2addr v0, p1

    .line 8
    iput-wide v0, p0, Ltp/b0$b;->b:J

    .line 9
    .line 10
    invoke-virtual {p0}, Ltp/b0$b;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Ltp/b0$b;->a:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Lsq/j;->l(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
