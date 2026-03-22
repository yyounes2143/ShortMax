.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;)V
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$show$1"
    f = "StaticFullscreenAd.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStaticFullscreenAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticFullscreenAdImpl$show$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n2642#2:118\n1#3:119\n*S KotlinDebug\n*F\n+ 1 StaticFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticFullscreenAdImpl$show$1\n*L\n102#1:118\n102#1:119\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;

.field public final synthetic l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 4
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
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->i:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->h:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->i:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_2

    .line 25
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
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->i:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lgt/g0;

    .line 40
    .line 41
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$b;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 46
    .line 47
    invoke-direct {v8, v1, v5, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;Lrs/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v9, 0x3

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v5, p1

    .line 55
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$c;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 64
    .line 65
    invoke-direct {v8, v5, v6, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;Lrs/c;)V

    .line 66
    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v5, p1

    .line 70
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 v5, 0x2

    .line 75
    new-array v5, v5, [Lkotlinx/coroutines/r;

    .line 76
    .line 77
    aput-object v1, v5, v2

    .line 78
    .line 79
    aput-object p1, v5, v3

    .line 80
    .line 81
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Lkt/e;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v1, v5}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/StaticAdActivity;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/StaticAdActivity$a;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$a;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 115
    .line 116
    invoke-direct {v9, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b$a;-><init>(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->i:Ljava/lang/Object;

    .line 128
    .line 129
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->h:I

    .line 130
    .line 131
    move-object v12, p0

    .line 132
    invoke-virtual/range {v6 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/StaticAdActivity$a;->a(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lrs/c;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    if-ne v1, v0, :cond_2

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_2
    move-object v0, p1

    .line 140
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lkotlinx/coroutines/r;

    .line 155
    .line 156
    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Lkt/e;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    move-object v13, v0

    .line 178
    move-object v0, p1

    .line 179
    move-object p1, v13

    .line 180
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_4

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lkotlinx/coroutines/r;

    .line 195
    .line 196
    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A$b;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/A;)Lkt/e;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    throw p1
.end method
