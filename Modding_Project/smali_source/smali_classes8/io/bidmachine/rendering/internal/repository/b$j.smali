.class final Lio/bidmachine/rendering/internal/repository/b$j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/b;->s(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getStringAsync$2"
    f = "RepositoryImpl.kt"
    l = {
        0xc3,
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/model/MediaSource;

.field final synthetic j:Lio/bidmachine/rendering/internal/repository/b;

.field final synthetic k:Llq/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llq/a$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Lio/bidmachine/rendering/internal/repository/b;",
            "Llq/a$a<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/rendering/internal/repository/b$j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->i:Lio/bidmachine/rendering/model/MediaSource;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/b$j;->j:Lio/bidmachine/rendering/internal/repository/b;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/b$j;->k:Llq/a$a;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/b$j;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/repository/b$j;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/b$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lio/bidmachine/rendering/internal/repository/b$j;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b$j;->i:Lio/bidmachine/rendering/model/MediaSource;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->j:Lio/bidmachine/rendering/internal/repository/b;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/b$j;->k:Llq/a$a;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/b$j;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/b$j;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

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
    :goto_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->i:Lio/bidmachine/rendering/model/MediaSource;

    .line 32
    .line 33
    instance-of v1, p1, Lrq/o0;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b$j;->j:Lio/bidmachine/rendering/internal/repository/b;

    .line 38
    .line 39
    check-cast p1, Lrq/o0;

    .line 40
    .line 41
    invoke-virtual {p1}, Lrq/o0;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Lio/bidmachine/rendering/utils/NetworkRequest$h;

    .line 46
    .line 47
    invoke-direct {v1}, Lio/bidmachine/rendering/utils/NetworkRequest$h;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/b$j;->k:Llq/a$a;

    .line 51
    .line 52
    new-instance v3, Lrq/t;

    .line 53
    .line 54
    const-string v4, "Uri is null"

    .line 55
    .line 56
    invoke-direct {v3, v4}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1, v1, v2, v3}, Lio/bidmachine/rendering/internal/repository/b;->q(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$f;Llq/a$a;Lrq/t;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    instance-of v1, p1, Lrq/h;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    check-cast p1, Lrq/h;

    .line 68
    .line 69
    invoke-virtual {p1}, Lrq/h;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static {p1, v1, v3, v4}, Lyq/r;->f(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->j:Lio/bidmachine/rendering/internal/repository/b;

    .line 82
    .line 83
    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/b$j;->k:Llq/a$a;

    .line 84
    .line 85
    iput v2, p0, Lio/bidmachine/rendering/internal/repository/b$j;->h:I

    .line 86
    .line 87
    invoke-static {v1, v3, p1, p0}, Lio/bidmachine/rendering/internal/repository/b;->h(Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->j:Lio/bidmachine/rendering/internal/repository/b;

    .line 95
    .line 96
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b$j;->k:Llq/a$a;

    .line 97
    .line 98
    new-instance v2, Lrq/t;

    .line 99
    .line 100
    const-string v4, "Can\'t decode string from base64"

    .line 101
    .line 102
    invoke-direct {v2, v4}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput v3, p0, Lio/bidmachine/rendering/internal/repository/b$j;->h:I

    .line 106
    .line 107
    invoke-static {p1, v1, v2, p0}, Lio/bidmachine/rendering/internal/repository/b;->i(Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_5

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1
.end method
