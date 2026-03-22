.class final Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShortsRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;->b(IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.shorts.ShortsRemoteDS$fetch$2"
    f = "ShortsRemoteDS.kt"
    l = {
        0x1b,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/Integer;

.field final synthetic n:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;",
            "IIZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->i:Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->k:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->l:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->m:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->n:Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->i:Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->k:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->l:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->m:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->n:Ljava/lang/Integer;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;-><init>(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->h:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->i:Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;->a(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v5, "pageNumber -> getForYouListPageNewV3 pageNumber "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->j:I

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ", pageSize -> "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->k:I

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, ", isColdBoot -> "

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->l:Z

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v5, ", lastShortPlayId -> "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->m:Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ", consecutiveTimes -> "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->n:Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p1, v1, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->i1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget v1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->j:I

    .line 134
    .line 135
    iget v4, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->k:I

    .line 136
    .line 137
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->l:Z

    .line 138
    .line 139
    if-eqz v5, :cond_3

    .line 140
    .line 141
    move v2, v3

    .line 142
    :cond_3
    iput v3, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->h:I

    .line 143
    .line 144
    invoke-interface {p1, v1, v4, v2, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->O(IIILrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v0, :cond_4

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_4
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget v1, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->j:I

    .line 161
    .line 162
    iget v4, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->k:I

    .line 163
    .line 164
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->l:Z

    .line 165
    .line 166
    if-eqz v5, :cond_6

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    move v3, v2

    .line 170
    :goto_1
    iput v2, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;->h:I

    .line 171
    .line 172
    invoke-interface {p1, v1, v4, v3, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->J(IIILrs/c;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-ne p1, v0, :cond_7

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_7
    :goto_2
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 180
    .line 181
    :goto_3
    return-object p1
.end method
