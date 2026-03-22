.class final Lcoil/intercept/EngineInterceptor$execute$executeResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EngineInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/EngineInterceptor;->i(Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lcoil/intercept/EngineInterceptor$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "coil.intercept.EngineInterceptor$execute$executeResult$1"
    f = "EngineInterceptor.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcoil/intercept/EngineInterceptor;

.field final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lg0/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "La0/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:Lm0/f;

.field final synthetic m:Ljava/lang/Object;

.field final synthetic n:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lm0/j;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic o:La0/c;


# direct methods
.method constructor <init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lm0/f;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;La0/c;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/EngineInterceptor;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lg0/h;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "La0/b;",
            ">;",
            "Lm0/f;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lm0/j;",
            ">;",
            "La0/c;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$execute$executeResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->i:Lcoil/intercept/EngineInterceptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->l:Lm0/f;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iput-object p7, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->o:La0/c;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->i:Lcoil/intercept/EngineInterceptor;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->l:Lm0/f;

    .line 10
    .line 11
    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iget-object v7, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->o:La0/c;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lm0/f;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;La0/c;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcoil/intercept/EngineInterceptor$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->i:Lcoil/intercept/EngineInterceptor;

    .line 28
    .line 29
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 30
    .line 31
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lg0/l;

    .line 34
    .line 35
    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    .line 37
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, La0/b;

    .line 40
    .line 41
    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->l:Lm0/f;

    .line 42
    .line 43
    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->m:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Lm0/j;

    .line 50
    .line 51
    iget-object v7, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->o:La0/c;

    .line 52
    .line 53
    iput v2, p0, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;->h:I

    .line 54
    .line 55
    move-object v2, p1

    .line 56
    move-object v8, p0

    .line 57
    invoke-static/range {v1 .. v8}, Lcoil/intercept/EngineInterceptor;->c(Lcoil/intercept/EngineInterceptor;Lg0/l;La0/b;Lm0/f;Ljava/lang/Object;Lm0/j;La0/c;Lrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    return-object p1
.end method
