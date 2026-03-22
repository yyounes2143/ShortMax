.class public final Lcd/f;
.super Ljava/lang/Object;
.source "ElapsedTime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcd/f;->a:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcd/f;->b:J

    .line 10
    .line 11
    cmp-long v6, v4, v2

    .line 12
    .line 13
    if-eqz v6, :cond_0

    .line 14
    .line 15
    sub-long/2addr v4, v0

    .line 16
    return-wide v4

    .line 17
    :cond_0
    return-wide v2
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcd/f;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcd/f;->b:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lcd/f;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    .line 21
    .line 22
    const-string v1, "end() has been called before"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcd/f;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

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
    return v0
.end method

.method public final d()Lcd/f;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcd/f;->a:J

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcd/f;->b:J

    .line 10
    .line 11
    return-object p0
.end method
