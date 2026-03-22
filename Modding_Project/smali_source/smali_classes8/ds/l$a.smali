.class public final Lds/l$a;
.super Ljava/lang/Object;
.source "SuspendFunctionGun.kt"

# interfaces
.implements Lrs/c;
.implements Lkotlin/coroutines/jvm/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lds/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs/c<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lds/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lds/l<",
            "TTSubject;TTContext;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lds/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lds/l<",
            "TTSubject;TTContext;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lds/l$a;->b:Lds/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p1, -0x80000000

    .line 7
    .line 8
    iput p1, p0, Lds/l$a;->a:I

    .line 9
    .line 10
    return-void
.end method

.method private final a()Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrs/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lds/l$a;->a:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lds/l$a;->b:Lds/l;

    .line 8
    .line 9
    invoke-static {v0}, Lds/l;->e(Lds/l;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lds/l$a;->a:I

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lds/l$a;->a:I

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    iput v1, p0, Lds/l$a;->a:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_1
    :try_start_0
    iget-object v0, p0, Lds/l$a;->b:Lds/l;

    .line 24
    .line 25
    invoke-static {v0}, Lds/l;->f(Lds/l;)[Lrs/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Lds/l$a;->a:I

    .line 30
    .line 31
    aget-object v0, v0, v1

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Lds/k;->a:Lds/k;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    iput v1, p0, Lds/l$a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    return-object v0

    .line 43
    :catchall_0
    sget-object v0, Lds/k;->a:Lds/k;

    .line 44
    .line 45
    return-object v0
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lds/l$a;->a()Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/c;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lkotlin/coroutines/jvm/internal/c;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lds/l$a;->b:Lds/l;

    .line 2
    .line 3
    invoke-static {v0}, Lds/l;->f(Lds/l;)[Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lds/l$a;->b:Lds/l;

    .line 8
    .line 9
    invoke-static {v1}, Lds/l;->e(Lds/l;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lds/l$a;->b:Lds/l;

    .line 25
    .line 26
    invoke-static {v0}, Lds/l;->e(Lds/l;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz v0, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lds/l$a;->b:Lds/l;

    .line 35
    .line 36
    invoke-static {v1}, Lds/l;->f(Lds/l;)[Lrs/c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    add-int/lit8 v2, v0, -0x1

    .line 41
    .line 42
    aget-object v0, v1, v0

    .line 43
    .line 44
    if-eq v0, p0, :cond_1

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_1
    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "Not started"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lds/l$a;->b:Lds/l;

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lds/l;->h(Lds/l;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lds/l$a;->b:Lds/l;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Lds/l;->g(Lds/l;Z)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
