.class public final Lcom/moloco/sdk/internal/publisher/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/b$a;,
        Lcom/moloco/sdk/internal/publisher/b$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/moloco/sdk/internal/publisher/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I


# instance fields
.field public final a:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/publisher/Initialization;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/publisher/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/e;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/b;->f:Lcom/moloco/sdk/internal/publisher/b$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/b;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lkt/i;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/publisher/x;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkt/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/publisher/Initialization;",
            ">;",
            "Lcom/moloco/sdk/internal/services/j;",
            "Lcom/moloco/sdk/internal/publisher/x;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/e;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "initializationState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "timeProviderService"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "adCreatorConfiguration"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "awaitAdFactory"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/b;->a:Lkt/i;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/b;->b:Lcom/moloco/sdk/internal/services/j;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/b;->c:Lcom/moloco/sdk/internal/publisher/x;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/b;->d:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/b;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/moloco/sdk/internal/publisher/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/b;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/b;->e(Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/publisher/b;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/b;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/moloco/sdk/internal/publisher/b;)Lcom/moloco/sdk/internal/services/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/b;->b:Lcom/moloco/sdk/internal/services/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/moloco/sdk/internal/publisher/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/b;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
    .locals 8

    .line 1
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/a;->i:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "failure"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "initial_sdk_init_state"

    .line 25
    .line 26
    invoke-virtual {v0, v2, p2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2, v0, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->a:Lkt/i;

    .line 45
    .line 46
    invoke-interface {v0}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/moloco/sdk/publisher/Initialization;

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object v4, Lcom/moloco/sdk/internal/publisher/b$b;->a:[I

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    aget v0, v4, v0

    .line 64
    .line 65
    :goto_0
    const-string/jumbo v4, "toUpperCase(...)"

    .line 66
    .line 67
    .line 68
    const-string v5, "CREATE_"

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    const/4 v7, 0x0

    .line 72
    if-eq v0, v2, :cond_3

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    if-eq v0, v2, :cond_2

    .line 76
    .line 77
    if-ne v0, v6, :cond_1

    .line 78
    .line 79
    sget-object p1, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 98
    .line 99
    invoke-virtual {p4, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p4, "_AD_FAILED_SDK_INIT_FAILED"

    .line 110
    .line 111
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-static {p1, p4, v7, v6, v7}, Lcom/moloco/sdk/internal/error/b$a;->a(Lcom/moloco/sdk/internal/error/b;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p3, p1, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sget-object p3, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    const-string v0, "sdk_init_failed"

    .line 136
    .line 137
    invoke-virtual {p1, p4, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p5, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p5, p1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 153
    .line 154
    .line 155
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 156
    .line 157
    const/16 v5, 0xc

    .line 158
    .line 159
    const/4 v6, 0x0

    .line 160
    const-string v1, "AdCreator"

    .line 161
    .line 162
    const-string v2, "Cannot create AdFactory as SDK init was failure"

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    sget-object p1, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 174
    .line 175
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_2
    sget-object p4, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 180
    .line 181
    invoke-virtual {p4}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 182
    .line 183
    .line 184
    move-result-object p4

    .line 185
    const-string v0, "UNABLE_TO_CREATE_AD"

    .line 186
    .line 187
    invoke-static {p4, v0, v7, v6, v7}, Lcom/moloco/sdk/internal/error/b$a;->a(Lcom/moloco/sdk/internal/error/b;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    invoke-virtual {p3, p4, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    sget-object p4, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 199
    .line 200
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string/jumbo v1, "unable_to_create_ad"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0, v1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    invoke-interface {p5, p3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    invoke-virtual {p2, p3, v1}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {p5, p2}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 223
    .line 224
    .line 225
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 226
    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string p3, "Could not find the adUnitId that was requested for load: "

    .line 233
    .line 234
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/16 v5, 0xc

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    const-string v1, "AdCreator"

    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    sget-object p1, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->UNABLE_TO_CREATE_AD:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_3
    sget-object p1, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 276
    .line 277
    invoke-virtual {p4, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p4

    .line 281
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p4, "_AD_FAILED_SDK_INIT_NOT_COMPLETED"

    .line 288
    .line 289
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p4

    .line 296
    invoke-static {p1, p4, v7, v6, v7}, Lcom/moloco/sdk/internal/error/b$a;->a(Lcom/moloco/sdk/internal/error/b;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p3, p1, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    sget-object p3, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 308
    .line 309
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p4

    .line 313
    const-string v0, "sdk_init_not_completed"

    .line 314
    .line 315
    invoke-virtual {p1, p4, v0}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-interface {p5, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p2, p1, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-interface {p5, p1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 331
    .line 332
    .line 333
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 334
    .line 335
    const/16 v5, 0xc

    .line 336
    .line 337
    const/4 v6, 0x0

    .line 338
    const-string v1, "AdCreator"

    .line 339
    .line 340
    const-string v2, "Cannot retrieve AdFactory as SDK init was not called or not completed"

    .line 341
    .line 342
    const/4 v3, 0x0

    .line 343
    const/4 v4, 0x0

    .line 344
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    sget-object p1, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_WAS_NOT_COMPLETED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 348
    .line 349
    :goto_1
    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/Banner;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$e;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$e;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final e(Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/e;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/moloco/sdk/internal/publisher/s;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcom/moloco/sdk/internal/publisher/b$c;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/moloco/sdk/internal/publisher/b$c;

    .line 15
    .line 16
    iget v5, v4, Lcom/moloco/sdk/internal/publisher/b$c;->m:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/moloco/sdk/internal/publisher/b$c;->m:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/moloco/sdk/internal/publisher/b$c;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/moloco/sdk/internal/publisher/b$c;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/moloco/sdk/internal/publisher/b$c;->k:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/moloco/sdk/internal/publisher/b$c;->m:I

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    iget-object v1, v4, Lcom/moloco/sdk/internal/publisher/b$c;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lcom/moloco/sdk/acm/e;

    .line 49
    .line 50
    iget-object v2, v4, Lcom/moloco/sdk/internal/publisher/b$c;->i:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/moloco/sdk/acm/recorder/a;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/moloco/sdk/internal/publisher/b$c;->h:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lcom/moloco/sdk/internal/publisher/s;

    .line 57
    .line 58
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v17, v3

    .line 62
    .line 63
    move-object v3, v1

    .line 64
    move-object v1, v4

    .line 65
    move-object/from16 v4, v17

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/d;->i:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b;->c:Lcom/moloco/sdk/internal/publisher/x;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/publisher/x;->a()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lkotlin/time/b;

    .line 100
    .line 101
    if-eqz v6, :cond_3

    .line 102
    .line 103
    invoke-virtual {v6}, Lkotlin/time/b;->M()J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b;->c:Lcom/moloco/sdk/internal/publisher/x;

    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/publisher/x;->b()J

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    :goto_1
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 115
    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v11, "Waiting for AdFactory with timeout: "

    .line 122
    .line 123
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v9}, Lkotlin/time/b;->K(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    const/16 v15, 0xc

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const-string v11, "AdCreator"

    .line 142
    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v14, 0x0

    .line 145
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v6, Lcom/moloco/sdk/internal/publisher/b$d;

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    move-object/from16 v11, p1

    .line 152
    .line 153
    invoke-direct {v6, v11, v10}, Lcom/moloco/sdk/internal/publisher/b$d;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, v4, Lcom/moloco/sdk/internal/publisher/b$c;->h:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v2, v4, Lcom/moloco/sdk/internal/publisher/b$c;->i:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v3, v4, Lcom/moloco/sdk/internal/publisher/b$c;->j:Ljava/lang/Object;

    .line 161
    .line 162
    iput v7, v4, Lcom/moloco/sdk/internal/publisher/b$c;->m:I

    .line 163
    .line 164
    invoke-static {v8, v9, v6, v4}, Lkotlinx/coroutines/TimeoutKt;->f(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-ne v4, v5, :cond_4

    .line 169
    .line 170
    return-object v5

    .line 171
    :cond_4
    :goto_2
    move-object v5, v4

    .line 172
    check-cast v5, Lcom/moloco/sdk/internal/e;

    .line 173
    .line 174
    sget-object v8, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 175
    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v9, "AdFactory received: "

    .line 182
    .line 183
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    if-eqz v5, :cond_5

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const/4 v7, 0x0

    .line 190
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    const/16 v13, 0xc

    .line 198
    .line 199
    const/4 v14, 0x0

    .line 200
    const-string v9, "AdCreator"

    .line 201
    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v12, 0x0

    .line 204
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 208
    .line 209
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v3, v6, v1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v5, :cond_6

    .line 228
    .line 229
    const-string/jumbo v5, "success"

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_6
    const-string v5, "failure"

    .line 234
    .line 235
    :goto_4
    invoke-virtual {v1, v3, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-interface {v2, v1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 240
    .line 241
    .line 242
    return-object v4
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->a:Lkt/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/publisher/Initialization;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "toLowerCase(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :cond_0
    const-string v0, "not_invoked_or_in_progress"

    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/Banner;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$f;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$f;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/InterstitialAd;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$g;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$g;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/Banner;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$h;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$h;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/NativeAd;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$i;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$i;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/b;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    new-instance v8, Lcom/moloco/sdk/internal/publisher/b$j;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/b$j;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
