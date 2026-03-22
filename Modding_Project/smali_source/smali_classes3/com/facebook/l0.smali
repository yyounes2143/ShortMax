.class public final Lcom/facebook/l0;
.super Ljava/lang/Object;
.source "RequestProgress.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/GraphRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/l0;->a:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/l0;->b:Lcom/facebook/GraphRequest;

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/v;->B()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lcom/facebook/l0;->c:J

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/facebook/GraphRequest$b;JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/l0;->e(Lcom/facebook/GraphRequest$b;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/facebook/GraphRequest$b;JJ)V
    .locals 0

    .line 1
    check-cast p0, Lcom/facebook/GraphRequest$f;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$f;->b(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/facebook/l0;->d:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/l0;->d:J

    .line 5
    .line 6
    iget-wide p1, p0, Lcom/facebook/l0;->e:J

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/facebook/l0;->c:J

    .line 9
    .line 10
    add-long/2addr p1, v2

    .line 11
    cmp-long p1, v0, p1

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    iget-wide p1, p0, Lcom/facebook/l0;->f:J

    .line 16
    .line 17
    cmp-long p1, v0, p1

    .line 18
    .line 19
    if-ltz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/l0;->d()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/l0;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/l0;->f:J

    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/facebook/l0;->d:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/facebook/l0;->e:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/l0;->b:Lcom/facebook/GraphRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->o()Lcom/facebook/GraphRequest$b;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v5, p0, Lcom/facebook/l0;->f:J

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v0, v5, v0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    instance-of v0, v2, Lcom/facebook/GraphRequest$f;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/facebook/l0;->d:J

    .line 28
    .line 29
    iget-object v0, p0, Lcom/facebook/l0;->a:Landroid/os/Handler;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v7, Lcom/facebook/k0;

    .line 34
    .line 35
    move-object v1, v7

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/facebook/k0;-><init>(Lcom/facebook/GraphRequest$b;JJ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    check-cast v2, Lcom/facebook/GraphRequest$f;

    .line 44
    .line 45
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/facebook/GraphRequest$f;->b(JJ)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-wide v0, p0, Lcom/facebook/l0;->d:J

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/facebook/l0;->e:J

    .line 51
    .line 52
    :cond_1
    return-void
.end method
