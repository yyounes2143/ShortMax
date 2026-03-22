.class public final Lcom/moloco/sdk/internal/publisher/u$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/u;->show(Lcom/moloco/sdk/publisher/AdShowListener;)V
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
    c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$show$2"
    f = "FullscreenAdImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/publisher/AdShowListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/publisher/u;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/moloco/sdk/internal/publisher/u<",
            "-TT;>;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/u$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->i:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

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

.method public static final i(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/u;->q()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/e0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/u;->a()Lcom/moloco/sdk/internal/publisher/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u$g;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/u$g;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/u$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/u$g;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$g;->i:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/publisher/u$g;-><init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/publisher/u;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u$g;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/u$g;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->i:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v9, Lcom/moloco/sdk/internal/publisher/e;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/u$g;->i:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->u(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/services/r;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->x(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 39
    .line 40
    new-instance v5, Lcom/moloco/sdk/internal/publisher/o0;

    .line 41
    .line 42
    invoke-direct {v5, v1}, Lcom/moloco/sdk/internal/publisher/o0;-><init>(Lcom/moloco/sdk/internal/publisher/u;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 46
    .line 47
    new-instance v6, Lcom/moloco/sdk/internal/publisher/p0;

    .line 48
    .line 49
    invoke-direct {v6, v1}, Lcom/moloco/sdk/internal/publisher/p0;-><init>(Lcom/moloco/sdk/internal/publisher/u;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->o(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->y(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/acm/recorder/a;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    move-object v1, v9

    .line 65
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/internal/publisher/e;-><init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v9}, Lcom/moloco/sdk/internal/publisher/n0;->d(Lcom/moloco/sdk/internal/publisher/t0;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/publisher/n0;->d(Lcom/moloco/sdk/internal/publisher/t0;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/n0;->i()Lcom/moloco/sdk/internal/publisher/t0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/n0;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    instance-of v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;

    .line 102
    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/n0;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;

    .line 116
    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    move-object v0, v1

    .line 120
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->b(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/publisher/n0;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/n0;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/x;

    .line 134
    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    move-object v0, v1

    .line 138
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/x;

    .line 139
    .line 140
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/u;->isLoaded()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;->m()Lkt/i;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v1}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    if-eqz p1, :cond_4

    .line 168
    .line 169
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_SHOW_ERROR_ALREADY_DISPLAYING:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 176
    .line 177
    sget-object v2, Lcom/moloco/sdk/internal/o;->e:Lcom/moloco/sdk/internal/o;

    .line 178
    .line 179
    invoke-static {v0, v1, v2}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {p1, v0}, Lcom/moloco/sdk/internal/publisher/t0;->a(Lcom/moloco/sdk/internal/c0;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    return-object p1

    .line 189
    :cond_5
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 190
    .line 191
    invoke-static {v1, v0, p1}, Lcom/moloco/sdk/internal/publisher/u;->i(Lcom/moloco/sdk/internal/publisher/u;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;Lcom/moloco/sdk/internal/publisher/t0;)V

    .line 192
    .line 193
    .line 194
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;

    .line 195
    .line 196
    if-eqz v1, :cond_6

    .line 197
    .line 198
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d0;

    .line 199
    .line 200
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;

    .line 201
    .line 202
    invoke-direct {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 206
    .line 207
    invoke-static {v2, p1}, Lcom/moloco/sdk/internal/publisher/u;->m(Lcom/moloco/sdk/internal/publisher/u;Lcom/moloco/sdk/internal/publisher/t0;)Lcom/moloco/sdk/internal/publisher/u$f;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {v0, v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;->c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_6
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/x;

    .line 216
    .line 217
    if-eqz v1, :cond_7

    .line 218
    .line 219
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/x;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 222
    .line 223
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->z(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 228
    .line 229
    invoke-static {v2, p1}, Lcom/moloco/sdk/internal/publisher/u;->c(Lcom/moloco/sdk/internal/publisher/u;Lcom/moloco/sdk/internal/publisher/t0;)Lcom/moloco/sdk/internal/publisher/u$e;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-interface {v0, v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;->c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object p1

    .line 239
    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    .line 240
    .line 241
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$g;->j:Lcom/moloco/sdk/internal/publisher/u;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_SHOW_ERROR_NOT_LOADED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 248
    .line 249
    sget-object v2, Lcom/moloco/sdk/internal/o;->d:Lcom/moloco/sdk/internal/o;

    .line 250
    .line 251
    invoke-static {v0, v1, v2}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {p1, v0}, Lcom/moloco/sdk/internal/publisher/t0;->a(Lcom/moloco/sdk/internal/c0;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 259
    .line 260
    return-object p1

    .line 261
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 264
    .line 265
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1
.end method
