.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->g0(Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$loadAndReadyMraid$2"
    f = "MraidBaseAd.kt"
    l = {
        0xac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

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
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->h:I

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
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->o()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->V(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->h:I

    .line 40
    .line 41
    invoke-interface {p1, v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 49
    .line 50
    instance-of v0, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->o()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x1

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    move-object v3, v1

    .line 69
    invoke-interface/range {v3 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->g(ZZZZZ)V

    .line 70
    .line 71
    .line 72
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->f0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->i0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u;->o()Lkt/i;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-interface {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->a(Z)V

    .line 98
    .line 99
    .line 100
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->i0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u;->m()Lkt/i;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v3}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u$a;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/u$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;)V

    .line 119
    .line 120
    .line 121
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/t;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/t;

    .line 122
    .line 123
    invoke-static {v9, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->a0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/t;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->l0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->m0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->n0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->j()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;

    .line 139
    .line 140
    instance-of v3, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 141
    .line 142
    if-eqz v3, :cond_4

    .line 143
    .line 144
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->j0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const/16 v9, 0xc

    .line 151
    .line 152
    const/4 v10, 0x0

    .line 153
    const-string v6, "Mraid Html data successfully loaded"

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object v0, p1

    .line 161
    check-cast v0, Lcom/moloco/sdk/internal/g0$b;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    if-eqz v0, :cond_5

    .line 171
    .line 172
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->j0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/16 v8, 0xc

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    const-string v5, "Mraid Html data load failed."

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x0

    .line 185
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;

    .line 189
    .line 190
    const/4 v3, 0x0

    .line 191
    invoke-direct {v0, v3, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-static {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;->X(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/f;)V

    .line 195
    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 199
    .line 200
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 201
    .line 202
    .line 203
    throw p1
.end method
