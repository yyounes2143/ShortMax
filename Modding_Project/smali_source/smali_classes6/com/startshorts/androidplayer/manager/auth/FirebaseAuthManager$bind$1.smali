.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->z(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1"
    f = "FirebaseAuthManager.kt"
    l = {
        0xc1,
        0xc4,
        0xdd
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,378:1\n125#2,13:379\n*S KotlinDebug\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1\n*L\n220#1:379,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

.field final synthetic m:Lcom/hades/aar/auth/base/AuthType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            "Lcom/hades/aar/auth/base/AuthType;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->j:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->m:Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->m:Lcom/hades/aar/auth/base/AuthType;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->h:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_3
    move-object v1, p1

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1, v4, v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$1;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->j:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->k:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v1, v6, v7, v5}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 69
    .line 70
    .line 71
    iput v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->i:I

    .line 72
    .line 73
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v0, :cond_3

    .line 78
    .line 79
    return-object v0

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 81
    .line 82
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->m:Lcom/hades/aar/auth/base/AuthType;

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    new-instance v7, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;

    .line 95
    .line 96
    invoke-direct {v7, p1, v4, v5}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    iput v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->i:I

    .line 102
    .line 103
    invoke-static {v6, v7, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-ne p1, v0, :cond_5

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->m:Lcom/hades/aar/auth/base/AuthType;

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    instance-of v6, v4, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 121
    .line 122
    if-eqz v6, :cond_6

    .line 123
    .line 124
    move-object v6, v4

    .line 125
    check-cast v6, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move-object v6, v5

    .line 129
    :goto_2
    if-nez v6, :cond_7

    .line 130
    .line 131
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "onResponseFailure exception -> "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", exception must not be null"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v1, "ApiBuilder"

    .line 160
    .line 161
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    new-instance v7, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;

    .line 170
    .line 171
    invoke-direct {v7, p1, v3, v6, v5}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/exception/ResponseException;Lrs/c;)V

    .line 172
    .line 173
    .line 174
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->h:Ljava/lang/Object;

    .line 175
    .line 176
    iput v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->i:I

    .line 177
    .line 178
    invoke-static {v4, v7, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, v0, :cond_8

    .line 183
    .line 184
    return-object v0

    .line 185
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    return-object p1
.end method
