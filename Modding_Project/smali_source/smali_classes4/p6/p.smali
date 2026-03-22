.class public final Lp6/p;
.super Lcom/google/android/exoplayer2/f;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:J

.field private final n:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lp6/o;

.field private final p:Lp6/k;

.field private final q:Lo5/b0;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/google/android/exoplayer2/v0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lp6/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lp6/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lp6/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Lp6/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp6/o;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lp6/k;->a:Lp6/k;

    invoke-direct {p0, p1, p2, v0}, Lp6/p;-><init>(Lp6/o;Landroid/os/Looper;Lp6/k;)V

    return-void
.end method

.method public constructor <init>(Lp6/o;Landroid/os/Looper;Lp6/k;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 3
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp6/o;

    iput-object p1, p0, Lp6/p;->o:Lp6/o;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lb7/s0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lp6/p;->n:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lp6/p;->p:Lp6/k;

    .line 6
    new-instance p1, Lo5/b0;

    invoke-direct {p1}, Lo5/b0;-><init>()V

    iput-object p1, p0, Lp6/p;->q:Lo5/b0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lp6/p;->B:J

    .line 8
    iput-wide p1, p0, Lp6/p;->C:J

    .line 9
    iput-wide p1, p0, Lp6/p;->D:J

    return-void
.end method

.method private H()V
    .locals 4

    .line 1
    new-instance v0, Lp6/f;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-wide v2, p0, Lp6/p;->D:J

    .line 8
    .line 9
    invoke-direct {p0, v2, v3}, Lp6/p;->K(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lp6/f;-><init>(Ljava/util/List;J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lp6/p;->S(Lp6/f;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private I(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lp6/p;->y:Lp6/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lp6/n;->getNextEventTimeIndex(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lp6/p;->y:Lp6/n;

    .line 10
    .line 11
    iget-wide p1, p1, Lr5/f;->b:J

    .line 12
    .line 13
    return-wide p1

    .line 14
    :cond_0
    const/4 p2, -0x1

    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lp6/p;->y:Lp6/n;

    .line 18
    .line 19
    invoke-virtual {p1}, Lp6/n;->getEventTimeCount()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    add-int/lit8 p2, p2, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lp6/n;->getEventTime(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Lp6/p;->y:Lp6/n;

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lp6/n;->getEventTime(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :goto_0
    return-wide p1
.end method

.method private J()J
    .locals 4

    .line 1
    iget v0, p0, Lp6/p;->A:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, Lp6/p;->y:Lp6/n;

    .line 13
    .line 14
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lp6/p;->A:I

    .line 18
    .line 19
    iget-object v1, p0, Lp6/p;->y:Lp6/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Lp6/n;->getEventTimeCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lp6/p;->y:Lp6/n;

    .line 29
    .line 30
    iget v1, p0, Lp6/p;->A:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lp6/n;->getEventTime(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :goto_0
    return-wide v2
.end method

.method private K(J)J
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    invoke-static {v2}, Lb7/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iget-wide v5, p0, Lp6/p;->C:J

    .line 19
    .line 20
    cmp-long v0, v5, v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move v3, v4

    .line 25
    :cond_1
    invoke-static {v3}, Lb7/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lp6/p;->C:J

    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method private L(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Subtitle decoding failed. streamFormat="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lp6/p;->v:Lcom/google/android/exoplayer2/v0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TextRenderer"

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lb7/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lp6/p;->H()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lp6/p;->Q()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp6/p;->t:Z

    .line 3
    .line 4
    iget-object v0, p0, Lp6/p;->p:Lp6/k;

    .line 5
    .line 6
    iget-object v1, p0, Lp6/p;->v:Lcom/google/android/exoplayer2/v0;

    .line 7
    .line 8
    invoke-static {v1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/exoplayer2/v0;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lp6/k;->b(Lcom/google/android/exoplayer2/v0;)Lp6/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lp6/p;->w:Lp6/j;

    .line 19
    .line 20
    return-void
.end method

.method private N(Lp6/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp6/p;->o:Lp6/o;

    .line 2
    .line 3
    iget-object v1, p1, Lp6/f;->a:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lp6/o;->onCues(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lp6/p;->o:Lp6/o;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lp6/o;->r(Lp6/f;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp6/p;->x:Lp6/m;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lp6/p;->A:I

    .line 6
    .line 7
    iget-object v1, p0, Lp6/p;->y:Lp6/n;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lr5/f;->l()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lp6/p;->y:Lp6/n;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lp6/p;->z:Lp6/n;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lr5/f;->l()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lp6/p;->z:Lp6/n;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private P()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp6/p;->O()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp6/p;->w:Lp6/j;

    .line 5
    .line 6
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lp6/j;

    .line 11
    .line 12
    invoke-interface {v0}, Lr5/d;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lp6/p;->w:Lp6/j;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lp6/p;->u:I

    .line 20
    .line 21
    return-void
.end method

.method private Q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp6/p;->P()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lp6/p;->M()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private S(Lp6/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp6/p;->n:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lp6/p;->N(Lp6/f;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method protected D([Lcom/google/android/exoplayer2/v0;JJ)V
    .locals 0

    .line 1
    iput-wide p4, p0, Lp6/p;->C:J

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    aget-object p1, p1, p2

    .line 5
    .line 6
    iput-object p1, p0, Lp6/p;->v:Lcom/google/android/exoplayer2/v0;

    .line 7
    .line 8
    iget-object p1, p0, Lp6/p;->w:Lp6/j;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lp6/p;->u:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lp6/p;->M()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public R(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->isCurrentStreamFinal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Lp6/p;->B:J

    .line 9
    .line 10
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/v0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lp6/p;->p:Lp6/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lp6/k;->a(Lcom/google/android/exoplayer2/v0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p1, p1, Lcom/google/android/exoplayer2/v0;->E:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Lo5/o0;->k(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->l:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lb7/u;->n(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Lo5/o0;->k(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Lo5/o0;->k(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TextRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lp6/f;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lp6/p;->N(Lp6/f;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp6/p;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public render(JJ)V
    .locals 8

    .line 1
    iput-wide p1, p0, Lp6/p;->D:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->isCurrentStreamFinal()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/4 p4, 0x1

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lp6/p;->B:J

    .line 11
    .line 12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long p3, v0, v2

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    cmp-long p3, p1, v0

    .line 22
    .line 23
    if-ltz p3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lp6/p;->O()V

    .line 26
    .line 27
    .line 28
    iput-boolean p4, p0, Lp6/p;->s:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean p3, p0, Lp6/p;->s:Z

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p3, p0, Lp6/p;->z:Lp6/n;

    .line 36
    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    iget-object p3, p0, Lp6/p;->w:Lp6/j;

    .line 40
    .line 41
    invoke-static {p3}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lp6/j;

    .line 46
    .line 47
    invoke-interface {p3, p1, p2}, Lp6/j;->setPositionUs(J)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object p3, p0, Lp6/p;->w:Lp6/j;

    .line 51
    .line 52
    invoke-static {p3}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Lp6/j;

    .line 57
    .line 58
    invoke-interface {p3}, Lr5/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Lp6/n;

    .line 63
    .line 64
    iput-object p3, p0, Lp6/p;->z:Lp6/n;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-direct {p0, p1}, Lp6/p;->L(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    const/4 v0, 0x2

    .line 77
    if-eq p3, v0, :cond_3

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object p3, p0, Lp6/p;->y:Lp6/n;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    invoke-direct {p0}, Lp6/p;->J()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    move p3, v1

    .line 90
    :goto_1
    cmp-long v2, v2, p1

    .line 91
    .line 92
    if-gtz v2, :cond_5

    .line 93
    .line 94
    iget p3, p0, Lp6/p;->A:I

    .line 95
    .line 96
    add-int/2addr p3, p4

    .line 97
    iput p3, p0, Lp6/p;->A:I

    .line 98
    .line 99
    invoke-direct {p0}, Lp6/p;->J()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    move p3, p4

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move p3, v1

    .line 106
    :cond_5
    iget-object v2, p0, Lp6/p;->z:Lp6/n;

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    invoke-virtual {v2}, Lr5/a;->h()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    if-nez p3, :cond_9

    .line 118
    .line 119
    invoke-direct {p0}, Lp6/p;->J()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    const-wide v6, 0x7fffffffffffffffL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v2, v4, v6

    .line 129
    .line 130
    if-nez v2, :cond_9

    .line 131
    .line 132
    iget v2, p0, Lp6/p;->u:I

    .line 133
    .line 134
    if-ne v2, v0, :cond_6

    .line 135
    .line 136
    invoke-direct {p0}, Lp6/p;->Q()V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    invoke-direct {p0}, Lp6/p;->O()V

    .line 141
    .line 142
    .line 143
    iput-boolean p4, p0, Lp6/p;->s:Z

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-wide v4, v2, Lr5/f;->b:J

    .line 147
    .line 148
    cmp-long v4, v4, p1

    .line 149
    .line 150
    if-gtz v4, :cond_9

    .line 151
    .line 152
    iget-object p3, p0, Lp6/p;->y:Lp6/n;

    .line 153
    .line 154
    if-eqz p3, :cond_8

    .line 155
    .line 156
    invoke-virtual {p3}, Lr5/f;->l()V

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {v2, p1, p2}, Lp6/n;->getNextEventTimeIndex(J)I

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    iput p3, p0, Lp6/p;->A:I

    .line 164
    .line 165
    iput-object v2, p0, Lp6/p;->y:Lp6/n;

    .line 166
    .line 167
    iput-object v3, p0, Lp6/p;->z:Lp6/n;

    .line 168
    .line 169
    move p3, p4

    .line 170
    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 171
    .line 172
    iget-object p3, p0, Lp6/p;->y:Lp6/n;

    .line 173
    .line 174
    invoke-static {p3}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p1, p2}, Lp6/p;->I(J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-direct {p0, v4, v5}, Lp6/p;->K(J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    new-instance p3, Lp6/f;

    .line 186
    .line 187
    iget-object v2, p0, Lp6/p;->y:Lp6/n;

    .line 188
    .line 189
    invoke-virtual {v2, p1, p2}, Lp6/n;->getCues(J)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p3, p1, v4, v5}, Lp6/f;-><init>(Ljava/util/List;J)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, p3}, Lp6/p;->S(Lp6/f;)V

    .line 197
    .line 198
    .line 199
    :cond_a
    iget p1, p0, Lp6/p;->u:I

    .line 200
    .line 201
    if-ne p1, v0, :cond_b

    .line 202
    .line 203
    return-void

    .line 204
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lp6/p;->r:Z

    .line 205
    .line 206
    if-nez p1, :cond_12

    .line 207
    .line 208
    iget-object p1, p0, Lp6/p;->x:Lp6/m;

    .line 209
    .line 210
    if-nez p1, :cond_d

    .line 211
    .line 212
    iget-object p1, p0, Lp6/p;->w:Lp6/j;

    .line 213
    .line 214
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lp6/j;

    .line 219
    .line 220
    invoke-interface {p1}, Lr5/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Lp6/m;

    .line 225
    .line 226
    if-nez p1, :cond_c

    .line 227
    .line 228
    return-void

    .line 229
    :cond_c
    iput-object p1, p0, Lp6/p;->x:Lp6/m;

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_1
    move-exception p1

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    :goto_4
    iget p2, p0, Lp6/p;->u:I

    .line 235
    .line 236
    if-ne p2, p4, :cond_e

    .line 237
    .line 238
    const/4 p2, 0x4

    .line 239
    invoke-virtual {p1, p2}, Lr5/a;->k(I)V

    .line 240
    .line 241
    .line 242
    iget-object p2, p0, Lp6/p;->w:Lp6/j;

    .line 243
    .line 244
    invoke-static {p2}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    check-cast p2, Lp6/j;

    .line 249
    .line 250
    invoke-interface {p2, p1}, Lr5/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iput-object v3, p0, Lp6/p;->x:Lp6/m;

    .line 254
    .line 255
    iput v0, p0, Lp6/p;->u:I

    .line 256
    .line 257
    return-void

    .line 258
    :cond_e
    iget-object p2, p0, Lp6/p;->q:Lo5/b0;

    .line 259
    .line 260
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/f;->E(Lo5/b0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    const/4 p3, -0x4

    .line 265
    if-ne p2, p3, :cond_11

    .line 266
    .line 267
    invoke-virtual {p1}, Lr5/a;->h()Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_f

    .line 272
    .line 273
    iput-boolean p4, p0, Lp6/p;->r:Z

    .line 274
    .line 275
    iput-boolean v1, p0, Lp6/p;->t:Z

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_f
    iget-object p2, p0, Lp6/p;->q:Lo5/b0;

    .line 279
    .line 280
    iget-object p2, p2, Lo5/b0;->b:Lcom/google/android/exoplayer2/v0;

    .line 281
    .line 282
    if-nez p2, :cond_10

    .line 283
    .line 284
    return-void

    .line 285
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/v0;->p:J

    .line 286
    .line 287
    iput-wide p2, p1, Lp6/m;->i:J

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    .line 290
    .line 291
    .line 292
    iget-boolean p2, p0, Lp6/p;->t:Z

    .line 293
    .line 294
    invoke-virtual {p1}, Lr5/a;->j()Z

    .line 295
    .line 296
    .line 297
    move-result p3

    .line 298
    xor-int/2addr p3, p4

    .line 299
    and-int/2addr p2, p3

    .line 300
    iput-boolean p2, p0, Lp6/p;->t:Z

    .line 301
    .line 302
    :goto_5
    iget-boolean p2, p0, Lp6/p;->t:Z

    .line 303
    .line 304
    if-nez p2, :cond_b

    .line 305
    .line 306
    iget-object p2, p0, Lp6/p;->w:Lp6/j;

    .line 307
    .line 308
    invoke-static {p2}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    check-cast p2, Lp6/j;

    .line 313
    .line 314
    invoke-interface {p2, p1}, Lr5/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    iput-object v3, p0, Lp6/p;->x:Lp6/m;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_11
    const/4 p1, -0x3

    .line 321
    if-ne p2, p1, :cond_b

    .line 322
    .line 323
    return-void

    .line 324
    :goto_6
    invoke-direct {p0, p1}, Lp6/p;->L(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 325
    .line 326
    .line 327
    :cond_12
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp6/p;->v:Lcom/google/android/exoplayer2/v0;

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lp6/p;->B:J

    .line 10
    .line 11
    invoke-direct {p0}, Lp6/p;->H()V

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lp6/p;->C:J

    .line 15
    .line 16
    iput-wide v0, p0, Lp6/p;->D:J

    .line 17
    .line 18
    invoke-direct {p0}, Lp6/p;->P()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected z(JZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lp6/p;->D:J

    .line 2
    .line 3
    invoke-direct {p0}, Lp6/p;->H()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lp6/p;->r:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lp6/p;->s:Z

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide p1, p0, Lp6/p;->B:J

    .line 17
    .line 18
    iget p1, p0, Lp6/p;->u:I

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lp6/p;->Q()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0}, Lp6/p;->O()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lp6/p;->w:Lp6/j;

    .line 30
    .line 31
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lp6/j;

    .line 36
    .line 37
    invoke-interface {p1}, Lr5/d;->flush()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
