.class public final Lcom/moloco/sdk/internal/error/crash/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/error/crash/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/error/crash/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/error/crash/d;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/error/crash/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "crashHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b;->a:Lcom/moloco/sdk/internal/error/crash/d;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/error/crash/b;)Lcom/moloco/sdk/internal/error/crash/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/error/crash/b;->a:Lcom/moloco/sdk/internal/error/crash/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/error/crash/b;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Lcom/moloco/sdk/internal/error/crash/b;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/error/crash/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/moloco/sdk/internal/error/crash/b$a;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/moloco/sdk/internal/error/crash/b$a;-><init>(Lcom/moloco/sdk/internal/error/crash/b;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method
