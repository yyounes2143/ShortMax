.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastFullscreenAdImpl$show$1"
    f = "VastFullscreenAd.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

.field public final synthetic j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

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

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->h:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->b()Lcom/moloco/sdk/internal/g0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    instance-of v1, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    instance-of v1, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    move-object v5, p1

    .line 75
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->e()Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    sget-object v6, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 92
    .line 93
    const/16 v11, 0xc

    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    const-string v7, "VastFullscreenAdImpl"

    .line 97
    .line 98
    const-string v8, "VAST ad media file does not exist"

    .line 99
    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    invoke-static/range {v6 .. v12}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_5
    :try_start_1
    sget-object v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivity;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivity$a;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;)Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 126
    .line 127
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a$a;

    .line 128
    .line 129
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 130
    .line 131
    invoke-direct {v8, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a$a;-><init>(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->p(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 143
    .line 144
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;

    .line 145
    .line 146
    invoke-direct {v10, p1, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/v;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V

    .line 147
    .line 148
    .line 149
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->h:I

    .line 150
    .line 151
    move-object v11, p0

    .line 152
    invoke-virtual/range {v4 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivity$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    if-ne p1, v0, :cond_6

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;)Lkt/e;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;->q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/I;)Lkt/e;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 190
    .line 191
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw p1
.end method
