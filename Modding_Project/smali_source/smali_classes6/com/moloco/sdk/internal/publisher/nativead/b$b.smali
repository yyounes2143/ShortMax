.class public final Lcom/moloco/sdk/internal/publisher/nativead/b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/b;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.NativeAdImpl$load$1"
    f = "NativeAdImpl.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/nativead/b;

.field public final synthetic k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/b;Lcom/moloco/sdk/publisher/AdLoad$Listener;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/b;",
            "Lcom/moloco/sdk/publisher/AdLoad$Listener;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/b$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->l:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/b$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/b$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/publisher/nativead/b$b;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/b;Lcom/moloco/sdk/publisher/AdLoad$Listener;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->i:I

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/moloco/sdk/internal/publisher/s0;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Lkotlin/Result;

    .line 20
    .line 21
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->a(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/acm/e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 44
    .line 45
    invoke-static {p1, v1, v3}, Lcom/moloco/sdk/internal/publisher/nativead/b;->c(Lcom/moloco/sdk/internal/publisher/nativead/b;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdLoad$Listener;)Lcom/moloco/sdk/internal/publisher/s0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->l(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->l:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 58
    .line 59
    invoke-static {v4}, Lcom/moloco/sdk/internal/publisher/nativead/b;->a(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/acm/e;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->h:Ljava/lang/Object;

    .line 64
    .line 65
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->i:I

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4, p1, p0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->l(Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-ne v1, v0, :cond_2

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_2
    move-object v0, p1

    .line 75
    move-object p1, v1

    .line 76
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/c$b;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b$b;->j:Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 85
    .line 86
    new-instance v12, Lcom/moloco/sdk/internal/publisher/nativead/f;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->f(Lcom/moloco/sdk/internal/publisher/nativead/b;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;->a()Lcom/moloco/sdk/internal/ortb/model/c;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;->b()Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->g(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/internal/services/r;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->h(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->e(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->m(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->i(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->j(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/acm/recorder/a;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    move-object v2, v12

    .line 125
    invoke-direct/range {v2 .. v11}, Lcom/moloco/sdk/internal/publisher/nativead/f;-><init>(Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v12}, Lcom/moloco/sdk/internal/publisher/nativead/b;->d(Lcom/moloco/sdk/internal/publisher/nativead/f;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->k()Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;->c()Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/internal/publisher/nativead/a;->e(Lcom/moloco/sdk/internal/publisher/nativead/model/d;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->k()Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    new-instance v3, Lcom/moloco/sdk/internal/publisher/nativead/b$b$a;

    .line 147
    .line 148
    invoke-direct {v3, v1}, Lcom/moloco/sdk/internal/publisher/nativead/b$b$a;-><init>(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/internal/publisher/nativead/a;->f(Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/nativead/b;->f(Lcom/moloco/sdk/internal/publisher/nativead/b;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;->a()Lcom/moloco/sdk/internal/ortb/model/c;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/c;->e()F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo(Ljava/lang/String;Ljava/lang/Float;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;->a()Lcom/moloco/sdk/internal/ortb/model/c;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {v0, v1, p1}, Lcom/moloco/sdk/internal/publisher/s0;->b(Lcom/moloco/sdk/publisher/MolocoAd;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 187
    .line 188
    .line 189
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_3
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 193
    .line 194
    const/16 v6, 0x8

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    const-string v2, "NativeAdImpl"

    .line 198
    .line 199
    const-string v3, "Failed to load native ad."

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p1
.end method
