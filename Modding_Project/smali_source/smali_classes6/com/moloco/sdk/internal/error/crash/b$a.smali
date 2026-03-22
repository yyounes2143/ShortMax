.class public final Lcom/moloco/sdk/internal/error/crash/b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/error/crash/b;->a(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.error.crash.CrashDetectorServiceImpl$register$2"
    f = "CrashDetectorService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/error/crash/b;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/error/crash/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/error/crash/b;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/error/crash/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->i:Lcom/moloco/sdk/internal/error/crash/b;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final i(Lcom/moloco/sdk/internal/error/crash/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/internal/error/crash/b;->b(Lcom/moloco/sdk/internal/error/crash/b;)Lcom/moloco/sdk/internal/error/crash/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p2}, Lcom/moloco/sdk/internal/error/crash/d;->a(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/moloco/sdk/internal/error/crash/b;->d(Lcom/moloco/sdk/internal/error/crash/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 p0, 0x2

    .line 22
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/error/crash/b$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/error/crash/b$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/error/crash/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/internal/error/crash/b$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->i:Lcom/moloco/sdk/internal/error/crash/b;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/moloco/sdk/internal/error/crash/b$a;-><init>(Lcom/moloco/sdk/internal/error/crash/b;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/error/crash/b$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->i:Lcom/moloco/sdk/internal/error/crash/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/moloco/sdk/internal/error/crash/b;->d(Lcom/moloco/sdk/internal/error/crash/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->i:Lcom/moloco/sdk/internal/error/crash/b;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lcom/moloco/sdk/internal/error/crash/b;->c(Lcom/moloco/sdk/internal/error/crash/b;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/moloco/sdk/internal/error/crash/b$a;->i:Lcom/moloco/sdk/internal/error/crash/b;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/internal/error/crash/c;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/moloco/sdk/internal/error/crash/c;-><init>(Lcom/moloco/sdk/internal/error/crash/b;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method
