.class final Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->d(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.repo.update.UpdateRepo$fetchUpdateData$2"
    f = "UpdateRepo.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/bean/update/UpdateData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/update/UpdateData;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->i:Lkotlin/jvm/functions/Function1;

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


# virtual methods
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->i:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->c(Lcom/startshorts/androidplayer/repo/update/UpdateRepo;)Lcom/startshorts/androidplayer/repo/update/UpdateRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/update/UpdateRemoteDS;->a(Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo$fetchUpdateData$2;->i:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_8

    .line 55
    .line 56
    check-cast p1, Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    sget-object v2, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->k(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getVersionCodeUpdating()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object v4, v1

    .line 81
    :goto_1
    invoke-virtual {p1, v4}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->setVersionCodeUpdating(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getMinVersion()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getMinVersion()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_5
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const-string v4, "UpdateDS"

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getRecentShowDay()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    :cond_6
    invoke-virtual {p1, v5}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->setRecentShowDay(I)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v5, "setUpdateData.keep updateData="

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v1, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v6, "setUpdateData.reset updateData="

    .line 143
    .line 144
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v5}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->setRecentShowDay(I)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->k(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p1
.end method
