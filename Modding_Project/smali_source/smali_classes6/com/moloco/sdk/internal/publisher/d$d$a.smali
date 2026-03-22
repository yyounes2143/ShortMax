.class public final Lcom/moloco/sdk/internal/publisher/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/d$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/d;

.field public final synthetic b:Lcom/moloco/sdk/internal/publisher/s0;

.field public final synthetic c:Lcom/moloco/sdk/internal/ortb/model/c;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/ortb/model/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->b:Lcom/moloco/sdk/internal/publisher/s0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->c:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->s(Lcom/moloco/sdk/internal/publisher/d;)Lgt/g0;

    move-result-object v1

    new-instance v4, Lcom/moloco/sdk/internal/publisher/d$d$a$a;

    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->b:Lcom/moloco/sdk/internal/publisher/s0;

    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->c:Lcom/moloco/sdk/internal/ortb/model/c;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/moloco/sdk/internal/publisher/d$d$a$a;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/ortb/model/c;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V
    .locals 7

    const-string v0, "internalError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->s(Lcom/moloco/sdk/internal/publisher/d;)Lgt/g0;

    move-result-object v1

    new-instance v4, Lcom/moloco/sdk/internal/publisher/d$d$a$b;

    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->b:Lcom/moloco/sdk/internal/publisher/s0;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v2, p1, v3}, Lcom/moloco/sdk/internal/publisher/d$d$a$b;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "timeoutError"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->s(Lcom/moloco/sdk/internal/publisher/d;)Lgt/g0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v4, Lcom/moloco/sdk/internal/publisher/d$d$a$c;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->a:Lcom/moloco/sdk/internal/publisher/d;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a;->b:Lcom/moloco/sdk/internal/publisher/s0;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v4, v0, v2, p1, v3}, Lcom/moloco/sdk/internal/publisher/d$d$a$c;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method
