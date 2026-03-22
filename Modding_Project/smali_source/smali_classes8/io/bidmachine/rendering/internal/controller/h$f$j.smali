.class public final Lio/bidmachine/rendering/internal/controller/h$f$j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h$f;->l(Ljava/lang/String;JJF)V
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

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$progress$$inlined$executeAction$1"
    f = "DefaultAdPhaseController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/internal/controller/h;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/Class;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:J

.field final synthetic o:J

.field final synthetic p:F


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lrs/c;JJF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->l:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p7, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->n:J

    .line 12
    .line 13
    iput-wide p9, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->o:J

    .line 14
    .line 15
    iput p11, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->p:F

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$j;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/controller/h$f$j;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 12
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
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$f$j;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->l:Ljava/lang/Class;

    .line 10
    .line 11
    iget-object v5, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v7, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->n:J

    .line 14
    .line 15
    iget-wide v9, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->o:J

    .line 16
    .line 17
    iget v11, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->p:F

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    move-object v6, p2

    .line 21
    invoke-direct/range {v0 .. v11}, Lio/bidmachine/rendering/internal/controller/h$f$j;-><init>(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lrs/c;JJF)V

    .line 22
    .line 23
    .line 24
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$j;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    iget v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->j:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/controller/h;->E(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->k(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->l:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->l:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$f$j$a;

    .line 49
    .line 50
    iget-wide v3, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->n:J

    .line 51
    .line 52
    iget-wide v5, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->o:J

    .line 53
    .line 54
    iget v7, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->p:F

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/rendering/internal/controller/h$f$j$a;-><init>(Ljava/lang/Object;JJF)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 65
    .line 66
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->k:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->j:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$j;->m:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/rendering/internal/controller/h;->l(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method
