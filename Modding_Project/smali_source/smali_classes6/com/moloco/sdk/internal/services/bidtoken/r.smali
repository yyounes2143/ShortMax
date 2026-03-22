.class public final Lcom/moloco/sdk/internal/services/bidtoken/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/u;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClientBidTokenService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientBidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/ClientBidTokenServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,185:1\n116#2,10:186\n*S KotlinDebug\n*F\n+ 1 ClientBidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/ClientBidTokenServiceImpl\n*L\n69#1:186,10\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/bidtoken/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/encryption/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/services/bidtoken/providers/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/moloco/sdk/internal/services/bidtoken/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/bidtoken/s;Lcom/moloco/sdk/internal/services/encryption/a;Lcom/moloco/sdk/internal/services/bidtoken/providers/m;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/bidtoken/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/encryption/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/services/bidtoken/providers/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "timeProviderService"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "clientBidTokenBuilder"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "encryptionService"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "signalProvider"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->b:Lcom/moloco/sdk/internal/services/j;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->c:Lcom/moloco/sdk/internal/services/bidtoken/s;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->d:Lcom/moloco/sdk/internal/services/encryption/a;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/m;

    .line 33
    .line 34
    const-string p1, "ClientBidTokenServiceImpl"

    .line 35
    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, ""

    .line 39
    .line 40
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->g:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {}, Lcom/moloco/sdk/internal/services/bidtoken/g;->a()Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->i:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    const/4 p2, 0x0

    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-static {p3, p1, p2}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->j:Lqt/a;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/bidtoken/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/internal/services/bidtoken/h;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/services/bidtoken/r$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/services/bidtoken/r$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/r;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->m:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->o:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->l:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lqt/a;

    .line 42
    .line 43
    iget-object p2, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->k:Ljava/lang/Object;

    .line 44
    .line 45
    move-object p3, p2

    .line 46
    check-cast p3, Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 47
    .line 48
    iget-object p2, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lcom/moloco/sdk/acm/recorder/a;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/r;

    .line 59
    .line 60
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object p4, p1

    .line 64
    move-object p1, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p4, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->j:Lqt/a;

    .line 78
    .line 79
    iput-object p0, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->h:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->i:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p2, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->j:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p3, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->k:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object p4, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->l:Ljava/lang/Object;

    .line 88
    .line 89
    iput v3, v0, Lcom/moloco/sdk/internal/services/bidtoken/r$a;->o:I

    .line 90
    .line 91
    invoke-interface {p4, v4, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-ne v0, v1, :cond_3

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_3
    move-object v0, p0

    .line 99
    :goto_1
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/moloco/sdk/internal/services/bidtoken/r;->d(Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 106
    .line 107
    iget-object v6, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 108
    .line 109
    const-string v7, "Bid token needs refresh, fetching new bid token"

    .line 110
    .line 111
    const/4 v9, 0x4

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    invoke-static/range {v5 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object p2, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->g:Ljava/lang/String;

    .line 118
    .line 119
    iput-object p3, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->i:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 120
    .line 121
    new-instance p3, Lcom/moloco/sdk/acm/b;

    .line 122
    .line 123
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->y:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {p3, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "false"

    .line 139
    .line 140
    invoke-virtual {p3, v1, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-interface {p1, p3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2, p1}, Lcom/moloco/sdk/internal/services/bidtoken/r;->b(Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->h:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    goto :goto_3

    .line 156
    :cond_4
    new-instance p2, Lcom/moloco/sdk/acm/b;

    .line 157
    .line 158
    sget-object p3, Lcom/moloco/sdk/internal/client_metrics_data/a;->y:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-direct {p2, p3}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object p3, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    const-string/jumbo v1, "true"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3, v1}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-interface {p1, p2}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->h:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_5

    .line 190
    .line 191
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 192
    .line 193
    new-instance p1, Ljava/lang/Exception;

    .line 194
    .line 195
    const-string p2, "Client bid token is empty"

    .line 196
    .line 197
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-interface {p4, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-object p1

    .line 212
    :cond_5
    :try_start_1
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 213
    .line 214
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/bidtoken/r;->h:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-interface {p4, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :goto_3
    invoke-interface {p4, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;)Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string/jumbo v0, "success"

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-string v4, "failure"

    .line 13
    .line 14
    const-string v5, ""

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 19
    .line 20
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/a;->x:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v0, v3}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "empty_public_key"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_0
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/d;->o:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :try_start_0
    iget-object v6, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->b:Lcom/moloco/sdk/internal/services/j;

    .line 66
    .line 67
    invoke-interface {v6}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    const-string v8, "rsa"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    :try_start_1
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->d:Lcom/moloco/sdk/internal/services/encryption/a;

    .line 74
    .line 75
    move-object/from16 v10, p1

    .line 76
    .line 77
    invoke-interface {v9, v10}, Lcom/moloco/sdk/internal/services/encryption/a;->a(Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 81
    :try_start_2
    const-string/jumbo v9, "update_signal_state"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .line 83
    .line 84
    :try_start_3
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/m;

    .line 85
    .line 86
    invoke-interface {v10}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    .line 88
    .line 89
    :try_start_4
    const-string v9, "provide_signal"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    .line 91
    :try_start_5
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/m;

    .line 92
    .line 93
    invoke-interface {v10}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->d()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 98
    .line 99
    :try_start_6
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->c:Lcom/moloco/sdk/internal/services/bidtoken/s;

    .line 100
    .line 101
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->i:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 102
    .line 103
    invoke-interface {v9, v10, v11}, Lcom/moloco/sdk/internal/services/bidtoken/s;->a(Lcom/moloco/sdk/internal/services/bidtoken/providers/k;Lcom/moloco/sdk/internal/services/bidtoken/h;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 108
    .line 109
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v12, "BidToken Component: "

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const/4 v14, 0x4

    .line 129
    const/4 v15, 0x0

    .line 130
    const/4 v13, 0x0

    .line 131
    move-object/from16 v10, v16

    .line 132
    .line 133
    invoke-static/range {v10 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    const/4 v10, 0x0

    .line 141
    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    const-string v11, "aes"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 146
    .line 147
    :try_start_7
    iget-object v12, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->d:Lcom/moloco/sdk/internal/services/encryption/a;

    .line 148
    .line 149
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v12, v9}, Lcom/moloco/sdk/internal/services/encryption/a;->a([B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 156
    :try_start_8
    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->c:Lcom/moloco/sdk/internal/services/bidtoken/s;

    .line 161
    .line 162
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v11, v9, v8}, Lcom/moloco/sdk/internal/services/bidtoken/s;->b([B[B)[B

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 174
    .line 175
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v3, v10, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-interface {v2, v10}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 184
    .line 185
    .line 186
    new-instance v10, Lcom/moloco/sdk/acm/b;

    .line 187
    .line 188
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/a;->x:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 189
    .line 190
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-direct {v10, v11}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v10, v9, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 206
    .line 207
    .line 208
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v9, "Client bid token build time: "

    .line 216
    .line 217
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v9, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->b:Lcom/moloco/sdk/internal/services/j;

    .line 221
    .line 222
    invoke-interface {v9}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 223
    .line 224
    .line 225
    move-result-wide v9

    .line 226
    sub-long/2addr v9, v6

    .line 227
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v6, " ms"

    .line 231
    .line 232
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    const/16 v15, 0xc

    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    const/4 v13, 0x0

    .line 243
    const/4 v14, 0x0

    .line 244
    move-object/from16 v10, v16

    .line 245
    .line 246
    move-object/from16 v16, v0

    .line 247
    .line 248
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string/jumbo v6, "v2:"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 269
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    move-object v12, v0

    .line 272
    move-object v8, v5

    .line 273
    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    move-object v12, v0

    .line 276
    move-object v8, v11

    .line 277
    goto :goto_0

    .line 278
    :catch_2
    move-exception v0

    .line 279
    move-object v12, v0

    .line 280
    move-object v8, v9

    .line 281
    goto :goto_0

    .line 282
    :catch_3
    move-exception v0

    .line 283
    move-object v12, v0

    .line 284
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sget-object v6, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 293
    .line 294
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 295
    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v9, "Client bid token build failed: "

    .line 302
    .line 303
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    const/16 v14, 0x8

    .line 314
    .line 315
    const/4 v15, 0x0

    .line 316
    const/4 v13, 0x0

    .line 317
    move-object v9, v6

    .line 318
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    new-instance v7, Lcom/moloco/sdk/acm/b;

    .line 322
    .line 323
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/a;->x:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 324
    .line 325
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-direct {v7, v9}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 333
    .line 334
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-virtual {v7, v10, v4}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    sget-object v10, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 343
    .line 344
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-virtual {v7, v11, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    if-lez v11, :cond_1

    .line 357
    .line 358
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/c;->g:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 359
    .line 360
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v11

    .line 364
    invoke-virtual {v7, v11, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 365
    .line 366
    .line 367
    :cond_1
    iget-object v14, v1, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 368
    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v11, "Recording metric failure: "

    .line 375
    .line 376
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/b;->c()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v11, ", tags: "

    .line 387
    .line 388
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/b;->b()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    const/16 v22, 0x3e

    .line 396
    .line 397
    const/16 v23, 0x0

    .line 398
    .line 399
    const-string v16, ","

    .line 400
    .line 401
    const/16 v17, 0x0

    .line 402
    .line 403
    const/16 v18, 0x0

    .line 404
    .line 405
    const/16 v19, 0x0

    .line 406
    .line 407
    const/16 v20, 0x0

    .line 408
    .line 409
    const/16 v21, 0x0

    .line 410
    .line 411
    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    const/16 v17, 0x4

    .line 423
    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    move-object v13, v6

    .line 427
    invoke-static/range {v13 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v2, v7}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v3, v6, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v3, v4, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 450
    .line 451
    .line 452
    return-object v5
.end method

.method public final c(Lcom/moloco/sdk/internal/services/bidtoken/h;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->i:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->i:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "config updated"

    .line 18
    .line 19
    :goto_0
    move-object v3, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string p1, "config didn\'t change"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return v0
.end method

.method public final d(Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v3, "rp changed, needs refresh"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    invoke-virtual {p0, p2}, Lcom/moloco/sdk/internal/services/bidtoken/r;->c(Lcom/moloco/sdk/internal/services/bidtoken/h;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v3, "config changed, needs refresh"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x0

    .line 56
    const-string v3, "cached bidToken is empty, needs refresh"

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/m;

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->b()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v5, 0x4

    .line 76
    const/4 v6, 0x0

    .line 77
    const-string/jumbo v3, "signal provider updated, needs refresh"

    .line 78
    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :cond_3
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 86
    .line 87
    iget-object v8, p0, Lcom/moloco/sdk/internal/services/bidtoken/r;->f:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v11, 0x4

    .line 90
    const/4 v12, 0x0

    .line 91
    const-string v9, "Bid token doesn\'t need refresh"

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    invoke-static/range {v7 .. v12}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    return p1
.end method
