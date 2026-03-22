.class public final Llf/r$a;
.super Ljava/lang/Object;
.source "VideoPlayer2.kt"

# interfaces
.implements Lcom/ss/ttvideoengine/VideoEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llf/r;->G(Lcom/ss/ttvideoengine/TTVideoEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Llf/r;


# direct methods
.method constructor <init>(Llf/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Llf/r$a;->p(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r$a;->s(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r$a;->q(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Llf/r;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llf/r$a;->l(Llf/r;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r$a;->r(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Llf/r;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llf/r$a;->o(Llf/r;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Llf/r;III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Llf/r$a;->m(Llf/r;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Llf/r$a;->v(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r$a;->u(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r$a;->n(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Llf/r;Lfk/p;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llf/r$a;->t(Llf/r;Lfk/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Llf/r;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Llf/a;->onBufferEnd(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final m(Llf/r;III)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Llf/a;->onBufferStart(III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final n(Llf/r;)V
    .locals 1

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Llf/r;->j(Llf/r;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {v0, p0}, Llf/a;->d(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final o(Llf/r;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Llf/r;->j(Llf/r;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {v0, p1, p0}, Llf/a;->c(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final p(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p2, p2, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3}, Llf/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final q(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Llf/a;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final r(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Llf/a;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final s(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Llf/a;->onPrepared()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final t(Llf/r;Lfk/p;)V
    .locals 2

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lfk/p;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-interface {p0, v0, v1}, Llf/a;->e(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final u(Llf/r;)V
    .locals 2

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Llf/a;->e(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final v(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->g(Llf/r;)Llf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Llf/a;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public onBufferEnd(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 4
    .line 5
    invoke-static {v1}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "onBufferEnd -> code("

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x29

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 35
    .line 36
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 37
    .line 38
    new-instance v2, Llf/i;

    .line 39
    .line 40
    invoke-direct {v2, v1, p1}, Llf/i;-><init>(Llf/r;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onBufferStart(III)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 4
    .line 5
    invoke-static {v1}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "onBufferStart -> code("

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ") afterFirstFrame("

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ") action("

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x29

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 51
    .line 52
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 53
    .line 54
    new-instance v2, Llf/o;

    .line 55
    .line 56
    invoke-direct {v2, v1, p1, p2, p3}, Llf/o;-><init>(Llf/r;III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 9
    .line 10
    invoke-static {v0}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onCompletion -> mTotalPosition("

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Llf/r$a;->a:Llf/r;

    .line 25
    .line 26
    invoke-static {v2}, Llf/r;->j(Llf/r;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ") mCurrentPosition("

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Llf/r$a;->a:Llf/r;

    .line 39
    .line 40
    invoke-static {v2}, Llf/r;->e(Llf/r;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x29

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-static {p1, v0}, Llf/r;->o(Llf/r;Z)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 66
    .line 67
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 68
    .line 69
    new-instance v1, Llf/n;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Llf/n;-><init>(Llf/r;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 7
    .line 8
    invoke-static {p1}, Llf/r;->h(Llf/r;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 15
    .line 16
    invoke-static {p1}, Llf/r;->j(Llf/r;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 23
    .line 24
    invoke-static {p1}, Llf/r;->j(Llf/r;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-gt p2, p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 31
    .line 32
    invoke-static {p1, p2}, Llf/r;->l(Llf/r;I)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 36
    .line 37
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 38
    .line 39
    new-instance v1, Llf/h;

    .line 40
    .line 41
    invoke-direct {v1, v0, p2}, Llf/h;-><init>(Llf/r;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public onError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 5

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 12
    .line 13
    invoke-static {v1}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onError -> code("

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v3, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ") errMsg("

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x29

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Llf/r;->o(Llf/r;Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 61
    .line 62
    invoke-virtual {v0}, Llf/r;->t()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCurrentResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v0, v1

    .line 75
    :goto_0
    iget-object v2, p0, Llf/r$a;->a:Llf/r;

    .line 76
    .line 77
    invoke-static {v2, v1}, Llf/r;->n(Llf/r;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 78
    .line 79
    .line 80
    iget v1, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Lmf/b;->a:Lmf/b;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lmf/b;->d(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lfk/h0;->a:Lfk/h0;

    .line 92
    .line 93
    iget-object v3, p0, Llf/r$a;->a:Llf/r;

    .line 94
    .line 95
    new-instance v4, Llf/g;

    .line 96
    .line 97
    invoke-direct {v4, v3, v1, p1, v0}, Llf/g;-><init>(Llf/r;Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;Lcom/ss/ttvideoengine/Resolution;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 3

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 9
    .line 10
    invoke-static {v0}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onPlaybackStateChanged -> "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    if-eq p2, p1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    if-eq p2, p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 42
    .line 43
    iget-object p2, p0, Llf/r$a;->a:Llf/r;

    .line 44
    .line 45
    new-instance v0, Llf/m;

    .line 46
    .line 47
    invoke-direct {v0, p2}, Llf/m;-><init>(Llf/r;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 55
    .line 56
    iget-object p2, p0, Llf/r$a;->a:Llf/r;

    .line 57
    .line 58
    new-instance v0, Llf/l;

    .line 59
    .line 60
    invoke-direct {v0, p2}, Llf/l;-><init>(Llf/r;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 9
    .line 10
    invoke-static {v0}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "onPrepared"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 20
    .line 21
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 22
    .line 23
    new-instance v1, Llf/q;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Llf/q;-><init>(Llf/r;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Llf/r$a;->a:Llf/r;

    .line 32
    .line 33
    invoke-virtual {p1}, Llf/r;->z()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 6

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 9
    .line 10
    invoke-static {v0}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onRenderStart -> mFirstFrameTimePrint("

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Llf/r$a;->a:Llf/r;

    .line 25
    .line 26
    invoke-static {v2}, Llf/r;->f(Llf/r;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x29

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 46
    .line 47
    invoke-static {v0}, Llf/r;->f(Llf/r;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Llf/r;->m(Llf/r;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 60
    .line 61
    invoke-static {v0}, Llf/r;->i(Llf/r;)Lfk/p;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 68
    .line 69
    invoke-virtual {v0}, Lfk/p;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    invoke-static {v1}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, "first frame cost "

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lfk/p;->b()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "ms"

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 109
    .line 110
    new-instance v2, Llf/j;

    .line 111
    .line 112
    invoke-direct {v2, v1, v0}, Llf/j;-><init>(Llf/r;Lfk/p;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 120
    .line 121
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 122
    .line 123
    new-instance v1, Llf/k;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Llf/k;-><init>(Llf/r;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V
    .locals 3

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v0, p0, Llf/r$a;->a:Llf/r;

    .line 4
    .line 5
    invoke-static {v0}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onVideoSizeChanged -> width("

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, ") height("

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x29

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 4

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 12
    .line 13
    invoke-static {v1}, Llf/r;->k(Llf/r;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onVideoStreamBitrateChanged -> "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 38
    .line 39
    iget-object v1, p0, Llf/r$a;->a:Llf/r;

    .line 40
    .line 41
    new-instance v2, Llf/p;

    .line 42
    .line 43
    invoke-direct {v2, v1, p1, p2}, Llf/p;-><init>(Llf/r;Lcom/ss/ttvideoengine/Resolution;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
