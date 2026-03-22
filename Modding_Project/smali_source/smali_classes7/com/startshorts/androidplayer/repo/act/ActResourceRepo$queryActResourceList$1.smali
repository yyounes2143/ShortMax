.class final Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActResourceRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->i(ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.repo.act.ActResourceRepo$queryActResourceList$1"
    f = "ActResourceRepo.kt"
    l = {
        0x17,
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Z

.field final synthetic k:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/act/ActResourceList;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function2;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/act/ActResourceList;",
            ">;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->j:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->k:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->j:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->k:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;-><init>(ZLkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lkotlin/Result;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Lkotlin/Result;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->c(Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;)Lcom/startshorts/androidplayer/repo/act/ActResourceRemoteDS;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->j:Z

    .line 51
    .line 52
    iput v3, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->i:I

    .line 53
    .line 54
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/act/ActResourceRemoteDS;->a(ZLrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string v3, "ActResourceRepo"

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    move-object v1, p1

    .line 70
    check-cast v1, Lcom/startshorts/androidplayer/bean/act/ActResourceList;

    .line 71
    .line 72
    sget-object v4, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->j(Lcom/startshorts/androidplayer/bean/act/ActResourceList;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 78
    .line 79
    const-string v4, "queryActResourceList succeed"

    .line 80
    .line 81
    invoke-virtual {v1, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v6, "queryActResourceList failed -> "

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v4, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->k:Lkotlin/jvm/functions/Function2;

    .line 121
    .line 122
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->h:Ljava/lang/Object;

    .line 131
    .line 132
    iput v2, p0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo$queryActResourceList$1;->i:I

    .line 133
    .line 134
    invoke-interface {v1, v3, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v0, :cond_6

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    return-object p1
.end method
