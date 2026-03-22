.class final Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->h(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.base.BaseViewModel$executeTask$1"
    f = "BaseViewModel.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:J

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

.field final synthetic m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic n:Z

.field final synthetic o:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->k:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->m:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->n:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->o:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->k:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->m:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->n:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->o:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->j:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "ms"

    .line 9
    .line 10
    const-string v4, " cost: "

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->h:J

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_4

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->j:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lgt/g0;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->k:Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    iput-wide v5, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->h:J

    .line 48
    .line 49
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->i:I

    .line 50
    .line 51
    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    move-wide v0, v5

    .line 59
    :goto_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->n:Z

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->o:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    sub-long/2addr v4, v0

    .line 83
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    move-wide v0, v5

    .line 99
    goto :goto_4

    .line 100
    :catch_1
    move-exception p1

    .line 101
    move-wide v0, v5

    .line 102
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->m:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    invoke-static {v2, p1, v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->c(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/Exception;Lkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->n:Z

    .line 110
    .line 111
    if-nez p1, :cond_3

    .line 112
    .line 113
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p1

    .line 124
    :goto_4
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->n:Z

    .line 125
    .line 126
    if-nez v2, :cond_4

    .line 127
    .line 128
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->l:Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;

    .line 129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel$executeTask$1;->o:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    sub-long/2addr v6, v0

    .line 148
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    throw p1
.end method
