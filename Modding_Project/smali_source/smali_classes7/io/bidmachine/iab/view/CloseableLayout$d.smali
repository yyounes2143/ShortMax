.class Lio/bidmachine/iab/view/CloseableLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/view/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:F

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->a:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->b:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->c:J

    .line 5
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 6
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 7
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/view/CloseableLayout$b;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout$d;-><init>()V

    return-void
.end method

.method static synthetic b(Lio/bidmachine/iab/view/CloseableLayout$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout$d;->c(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Z)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->f:J

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-wide v6, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 16
    .line 17
    sub-long/2addr v4, v6

    .line 18
    add-long/2addr v0, v4

    .line 19
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->f:J

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method static synthetic f(Lio/bidmachine/iab/view/CloseableLayout$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lio/bidmachine/iab/view/CloseableLayout$d;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->b:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lio/bidmachine/iab/view/CloseableLayout$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic k(Lio/bidmachine/iab/view/CloseableLayout$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->c:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public d(ZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->a:Z

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->b:F

    .line 4
    .line 5
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 6
    .line 7
    mul-float/2addr p2, p1

    .line 8
    float-to-long p1, p2

    .line 9
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->c:J

    .line 10
    .line 11
    const-wide/16 p1, 0x0

    .line 12
    .line 13
    iput-wide p1, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 14
    .line 15
    return-void
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->c:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public h()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->f:J

    .line 2
    .line 3
    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->e:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    :cond_0
    return-wide v0
.end method

.method public j()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->c:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->d:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/view/CloseableLayout$d;->a:Z

    .line 2
    .line 3
    return v0
.end method
