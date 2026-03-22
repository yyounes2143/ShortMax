.class public final Lio/ktor/client/plugins/HttpRequestRetry$Configuration;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public a:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lsr/b;",
            "-",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$b;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$modifyRequest$1;->d:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$modifyRequest$1;

    .line 5
    .line 6
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delay$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delay$1;-><init>(Lrs/c;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->e:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->r(I)V

    .line 18
    .line 19
    .line 20
    const/16 v9, 0xf

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v1, p0

    .line 31
    invoke-static/range {v1 .. v10}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->e(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;DJJZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->m(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic c(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->b(ZLkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic e(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;DJJZILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 v0, p8, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-wide v0, p1

    .line 9
    :goto_0
    and-int/lit8 v2, p8, 0x2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-wide/32 v2, 0xea60

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v2, p3

    .line 18
    :goto_1
    and-int/lit8 v4, p8, 0x4

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    const-wide/16 v4, 0x3e8

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v4, p5

    .line 26
    :goto_2
    and-int/lit8 v6, p8, 0x8

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v6, p7

    .line 33
    :goto_3
    move-wide p1, v0

    .line 34
    move-wide p3, v2

    .line 35
    move-wide p5, v4

    .line 36
    move p7, v6

    .line 37
    invoke-virtual/range {p0 .. p7}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->d(DJJZ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final m(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lkotlin/random/Random$Default;->j(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :goto_0
    return-wide v0
.end method

.method public static synthetic p(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->o(IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(ZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delayMillis$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delayMillis$1;-><init>(ZLkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->t(Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d(DJJZ)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v0, p1, v0

    .line 4
    .line 5
    const-string v1, "Check failed."

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, p3, v2

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    cmp-long v0, p5, v2

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    move-wide v3, p1

    .line 23
    move-wide v5, p3

    .line 24
    move-object v7, p0

    .line 25
    move-wide v8, p5

    .line 26
    invoke-direct/range {v2 .. v9}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;-><init>(DJLio/ktor/client/plugins/HttpRequestRetry$Configuration;J)V

    .line 27
    .line 28
    .line 29
    move-object v2, p0

    .line 30
    move/from16 v1, p7

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->b(ZLkotlin/jvm/functions/Function2;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    move-object v2, p0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    move-object v2, p0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    move-object v2, p0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final f()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->e:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "delayMillis"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$b;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lsr/b;",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->a:Lat/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "shouldRetry"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final k()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->b:Lat/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "shouldRetryOnException"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final l(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$b;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final n(ILat/n;)V
    .locals 1
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lsr/b;",
            "-",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->f:I

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->v(Lat/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final o(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->q(ILat/n;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q(ILat/n;)V
    .locals 1
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->f:I

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->w(Lat/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->s(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, p1, v2, v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->p(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IZILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;->d:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->n(ILat/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->c:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final v(Lat/n;)V
    .locals 1
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lsr/b;",
            "-",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->a:Lat/n;

    .line 7
    .line 8
    return-void
.end method

.method public final w(Lat/n;)V
    .locals 1
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->b:Lat/n;

    .line 7
    .line 8
    return-void
.end method
