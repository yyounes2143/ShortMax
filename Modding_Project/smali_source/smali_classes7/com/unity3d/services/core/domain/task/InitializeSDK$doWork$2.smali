.class final Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InitializeSDK.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/domain/task/InitializeSDK;->doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/EmptyParams;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2"
    f = "InitializeSDK.kt"
    l = {
        0x30,
        0x35,
        0x3a,
        0x3c,
        0x41,
        0x43,
        0x47,
        0x4a,
        0x59,
        0x5c,
        0x64,
        0x67,
        0x6a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInitializeSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n24#2:130\n14#2,2:131\n16#2,10:134\n26#2:145\n1#3:133\n1#3:144\n*S KotlinDebug\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n*L\n41#1:130\n41#1:131,2\n41#1:134,10\n41#1:145\n41#1:144\n*E\n"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/core/domain/task/InitializeSDK;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/domain/task/InitializeSDK;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeSDK;

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
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Lkotlin/Result;

    .line 24
    .line 25
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto/16 :goto_d

    .line 30
    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_e

    .line 33
    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto/16 :goto_11

    .line 36
    .line 37
    :pswitch_1
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 42
    .line 43
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_c

    .line 47
    .line 48
    :pswitch_2
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 53
    .line 54
    :try_start_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    check-cast p1, Lkotlin/Result;

    .line 58
    .line 59
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :pswitch_3
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 72
    .line 73
    :try_start_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :pswitch_4
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 83
    .line 84
    :try_start_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    check-cast p1, Lkotlin/Result;

    .line 88
    .line 89
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    move-object v4, v2

    .line 94
    :cond_0
    move-object v2, v1

    .line 95
    move-object v1, p1

    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :pswitch_5
    iget-object v0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    :try_start_5
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Lkotlin/Result;

    .line 104
    .line 105
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    .line 107
    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :pswitch_6
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v2, Lcom/unity3d/services/core/configuration/Configuration;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 119
    .line 120
    iget-object v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v5, Lgt/g0;

    .line 123
    .line 124
    :try_start_6
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    check-cast p1, Lkotlin/Result;

    .line 128
    .line 129
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :pswitch_7
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lcom/unity3d/services/core/configuration/Configuration;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v4, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v5, Lgt/g0;

    .line 148
    .line 149
    :try_start_7
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    .line 151
    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :pswitch_8
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 161
    .line 162
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v4, Lgt/g0;

    .line 165
    .line 166
    :try_start_8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    check-cast p1, Lkotlin/Result;

    .line 170
    .line 171
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 175
    :cond_1
    move-object v5, v4

    .line 176
    move-object v4, v2

    .line 177
    move-object v2, v1

    .line 178
    move-object v1, p1

    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :pswitch_9
    iget-object v0, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 182
    .line 183
    :try_start_9
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    check-cast p1, Lkotlin/Result;

    .line 187
    .line 188
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 189
    .line 190
    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :pswitch_a
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 196
    .line 197
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v2, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 200
    .line 201
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v4, Lgt/g0;

    .line 204
    .line 205
    :try_start_a
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    check-cast p1, Lkotlin/Result;

    .line 209
    .line 210
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :pswitch_b
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Lgt/g0;

    .line 223
    .line 224
    :try_start_b
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    check-cast p1, Lkotlin/Result;

    .line 228
    .line 229
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 233
    move-object v4, v2

    .line 234
    :cond_2
    move-object v2, v1

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :pswitch_c
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 240
    .line 241
    iget-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v4, Lgt/g0;

    .line 244
    .line 245
    :try_start_c
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :pswitch_d
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 253
    .line 254
    move-object v4, p1

    .line 255
    check-cast v4, Lgt/g0;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 258
    .line 259
    :try_start_d
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 260
    .line 261
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getElapsedRealtime()J

    .line 262
    .line 263
    .line 264
    move-result-wide v5

    .line 265
    invoke-static {v5, v6}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTime(J)V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    invoke-static {v5, v6}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTimeSinceEpoch(J)V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-interface {p1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->didInitStart()V

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getGameId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    if-eqz p1, :cond_3

    .line 287
    .line 288
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    if-nez v5, :cond_5

    .line 293
    .line 294
    :cond_3
    new-instance v5, Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 295
    .line 296
    sget-object v6, Lcom/unity3d/services/core/configuration/ErrorState;->InvalidGameId:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 297
    .line 298
    new-instance v7, Ljava/lang/Exception;

    .line 299
    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v9, "gameId \""

    .line 306
    .line 307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string p1, "\" should be a number."

    .line 314
    .line 315
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-direct {v7, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance p1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 326
    .line 327
    invoke-direct {p1}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-direct {v5, v6, v7, p1}, Lcom/unity3d/services/core/domain/task/InitializationException;-><init>(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 331
    .line 332
    .line 333
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 336
    .line 337
    iput v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 338
    .line 339
    invoke-static {v1, v5, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    if-ne p1, v0, :cond_4

    .line 344
    .line 345
    return-object v0

    .line 346
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 347
    .line 348
    :cond_5
    const-string p1, "Unity Ads Init: Loading Config File From Local Storage"

    .line 349
    .line 350
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v1}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getConfigFileFromLocalStorage$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    new-instance v5, Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage$Params;

    .line 358
    .line 359
    invoke-direct {v5, v3, v2, v3}, Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 360
    .line 361
    .line 362
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 363
    .line 364
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 365
    .line 366
    const/4 v2, 0x2

    .line 367
    iput v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 368
    .line 369
    invoke-virtual {p1, v5, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-ne p1, v0, :cond_2

    .line 374
    .line 375
    return-object v0

    .line 376
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    if-eqz v1, :cond_6

    .line 381
    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v6, "Unity Ads Init: Could not load config file from local storage: "

    .line 388
    .line 389
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :cond_6
    new-instance v1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 407
    .line 408
    invoke-direct {v1}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-eqz v5, :cond_7

    .line 416
    .line 417
    move-object p1, v1

    .line 418
    :cond_7
    move-object v1, p1

    .line 419
    check-cast v1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 420
    .line 421
    invoke-static {v2}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateReset$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateReset;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance v5, Lcom/unity3d/services/core/domain/task/InitializeStateReset$Params;

    .line 426
    .line 427
    invoke-direct {v5, v1}, Lcom/unity3d/services/core/domain/task/InitializeStateReset$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 428
    .line 429
    .line 430
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 431
    .line 432
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 435
    .line 436
    const/4 v6, 0x3

    .line 437
    iput v6, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 438
    .line 439
    invoke-virtual {p1, v5, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    if-ne p1, v0, :cond_8

    .line 444
    .line 445
    return-object v0

    .line 446
    :cond_8
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eqz v5, :cond_b

    .line 451
    .line 452
    sget-object v4, Lcom/unity3d/services/core/configuration/ErrorState;->ResetWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 453
    .line 454
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 461
    .line 462
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 463
    .line 464
    const/4 v3, 0x4

    .line 465
    iput v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 466
    .line 467
    invoke-static {v2, v4, v5, v1, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$executeErrorState-BWLJW6A(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    if-ne v1, v0, :cond_9

    .line 472
    .line 473
    return-object v0

    .line 474
    :cond_9
    move-object v0, p1

    .line 475
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    if-nez p1, :cond_a

    .line 480
    .line 481
    new-instance p1, Ljava/lang/Exception;

    .line 482
    .line 483
    sget-object v0, Lcom/unity3d/services/core/configuration/ErrorState;->ResetWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_a
    throw p1

    .line 493
    :cond_b
    invoke-static {v2}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateConfig$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateConfig;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    new-instance v5, Lcom/unity3d/services/core/domain/task/InitializeStateConfig$Params;

    .line 498
    .line 499
    invoke-direct {v5, v1}, Lcom/unity3d/services/core/domain/task/InitializeStateConfig$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 500
    .line 501
    .line 502
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 503
    .line 504
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 505
    .line 506
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 507
    .line 508
    const/4 v6, 0x5

    .line 509
    iput v6, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 510
    .line 511
    invoke-virtual {p1, v5, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    if-ne p1, v0, :cond_1

    .line 516
    .line 517
    return-object v0

    .line 518
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-eqz p1, :cond_c

    .line 523
    .line 524
    invoke-static {v1}, Lcom/unity3d/services/core/domain/ResultExtensionsKt;->getInitializationExceptionOrThrow(Ljava/lang/Object;)Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iput-object v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 529
    .line 530
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 533
    .line 534
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 535
    .line 536
    const/4 v6, 0x6

    .line 537
    iput v6, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 538
    .line 539
    invoke-static {v4, p1, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    if-ne p1, v0, :cond_c

    .line 544
    .line 545
    return-object v0

    .line 546
    :cond_c
    :goto_5
    invoke-static {v4}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateLoadCache$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    new-instance v6, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$Params;

    .line 551
    .line 552
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    move-object v7, v1

    .line 556
    check-cast v7, Lcom/unity3d/services/core/configuration/Configuration;

    .line 557
    .line 558
    invoke-direct {v6, v7}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 559
    .line 560
    .line 561
    iput-object v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 562
    .line 563
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 564
    .line 565
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 566
    .line 567
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 568
    .line 569
    const/4 v7, 0x7

    .line 570
    iput v7, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 571
    .line 572
    invoke-virtual {p1, v6, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    if-ne p1, v0, :cond_d

    .line 577
    .line 578
    return-object v0

    .line 579
    :cond_d
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    if-eqz v6, :cond_10

    .line 584
    .line 585
    sget-object v1, Lcom/unity3d/services/core/configuration/ErrorState;->LoadCache:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 586
    .line 587
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 592
    .line 593
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 594
    .line 595
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 596
    .line 597
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 598
    .line 599
    const/16 v3, 0x8

    .line 600
    .line 601
    iput v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 602
    .line 603
    invoke-static {v4, v1, v5, v2, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$executeErrorState-BWLJW6A(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Throwable;Lcom/unity3d/services/core/configuration/Configuration;Lrs/c;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    if-ne v1, v0, :cond_e

    .line 608
    .line 609
    return-object v0

    .line 610
    :cond_e
    move-object v0, p1

    .line 611
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    if-nez p1, :cond_f

    .line 616
    .line 617
    new-instance p1, Ljava/lang/Exception;

    .line 618
    .line 619
    sget-object v0, Lcom/unity3d/services/core/configuration/ErrorState;->LoadCache:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    :cond_f
    throw p1

    .line 629
    :cond_10
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;

    .line 633
    .line 634
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;->getHasHashMismatch()Z

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    if-eqz v6, :cond_13

    .line 639
    .line 640
    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/IExperiments;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-interface {v2}, Lcom/unity3d/services/core/configuration/IExperiments;->isWebViewAsyncDownloadEnabled()Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    if-eqz v2, :cond_11

    .line 649
    .line 650
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;->getWebViewData()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    if-eqz v2, :cond_11

    .line 655
    .line 656
    new-instance v6, Lgt/f0;

    .line 657
    .line 658
    const-string v2, "LaunchLoadWeb"

    .line 659
    .line 660
    invoke-direct {v6, v2}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    new-instance v8, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2$1$webViewData$1;

    .line 664
    .line 665
    invoke-direct {v8, v4, v1, v3}, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2$1$webViewData$1;-><init>(Lcom/unity3d/services/core/domain/task/InitializeSDK;Ljava/lang/Object;Lrs/c;)V

    .line 666
    .line 667
    .line 668
    const/4 v9, 0x2

    .line 669
    const/4 v10, 0x0

    .line 670
    const/4 v7, 0x0

    .line 671
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;->getWebViewData()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    goto :goto_a

    .line 679
    :cond_11
    invoke-static {v4}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateLoadWeb$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    new-instance v2, Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$Params;

    .line 684
    .line 685
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    move-object v5, v1

    .line 689
    check-cast v5, Lcom/unity3d/services/core/configuration/Configuration;

    .line 690
    .line 691
    invoke-direct {v2, v5}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 692
    .line 693
    .line 694
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 695
    .line 696
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 697
    .line 698
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 699
    .line 700
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 701
    .line 702
    const/16 v5, 0x9

    .line 703
    .line 704
    iput v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 705
    .line 706
    invoke-virtual {p1, v2, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    if-ne p1, v0, :cond_0

    .line 711
    .line 712
    return-object v0

    .line 713
    :goto_8
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    if-eqz p1, :cond_12

    .line 718
    .line 719
    invoke-static {v1}, Lcom/unity3d/services/core/domain/ResultExtensionsKt;->getInitializationExceptionOrThrow(Ljava/lang/Object;)Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 724
    .line 725
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 726
    .line 727
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 728
    .line 729
    const/16 v5, 0xa

    .line 730
    .line 731
    iput v5, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 732
    .line 733
    invoke-static {v4, p1, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object p1

    .line 737
    if-ne p1, v0, :cond_12

    .line 738
    .line 739
    return-object v0

    .line 740
    :cond_12
    :goto_9
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    check-cast v1, Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$LoadWebResult;

    .line 744
    .line 745
    invoke-virtual {v1}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$LoadWebResult;->getWebViewDataString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    move-object v1, v2

    .line 750
    goto :goto_a

    .line 751
    :cond_13
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;->getWebViewData()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    if-eqz p1, :cond_17

    .line 756
    .line 757
    :goto_a
    invoke-static {v4}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateCreate$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateCreate;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    new-instance v5, Lcom/unity3d/services/core/domain/task/InitializeStateCreate$Params;

    .line 762
    .line 763
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    move-object v6, v1

    .line 767
    check-cast v6, Lcom/unity3d/services/core/configuration/Configuration;

    .line 768
    .line 769
    invoke-direct {v5, v6, p1}, Lcom/unity3d/services/core/domain/task/InitializeStateCreate$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    iput-object v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 773
    .line 774
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 775
    .line 776
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$2:Ljava/lang/Object;

    .line 777
    .line 778
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$3:Ljava/lang/Object;

    .line 779
    .line 780
    const/16 p1, 0xb

    .line 781
    .line 782
    iput p1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 783
    .line 784
    invoke-virtual {v2, v5, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    if-ne p1, v0, :cond_14

    .line 789
    .line 790
    return-object v0

    .line 791
    :cond_14
    move-object v2, v4

    .line 792
    :goto_b
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    if-eqz v4, :cond_15

    .line 797
    .line 798
    invoke-static {p1}, Lcom/unity3d/services/core/domain/ResultExtensionsKt;->getInitializationExceptionOrThrow(Ljava/lang/Object;)Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    iput-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 803
    .line 804
    iput-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 805
    .line 806
    const/16 v4, 0xc

    .line 807
    .line 808
    iput v4, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 809
    .line 810
    invoke-static {v2, p1, p0}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$handleInitializationException(Lcom/unity3d/services/core/domain/task/InitializeSDK;Lcom/unity3d/services/core/domain/task/InitializationException;Lrs/c;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    if-ne p1, v0, :cond_15

    .line 815
    .line 816
    return-object v0

    .line 817
    :cond_15
    :goto_c
    invoke-static {v2}, Lcom/unity3d/services/core/domain/task/InitializeSDK;->access$getInitializeStateComplete$p(Lcom/unity3d/services/core/domain/task/InitializeSDK;)Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    new-instance v2, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;

    .line 822
    .line 823
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 824
    .line 825
    .line 826
    check-cast v1, Lcom/unity3d/services/core/configuration/Configuration;

    .line 827
    .line 828
    invoke-direct {v2, v1}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 829
    .line 830
    .line 831
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$0:Ljava/lang/Object;

    .line 832
    .line 833
    iput-object v3, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->L$1:Ljava/lang/Object;

    .line 834
    .line 835
    const/16 v1, 0xd

    .line 836
    .line 837
    iput v1, p0, Lcom/unity3d/services/core/domain/task/InitializeSDK$doWork$2;->label:I

    .line 838
    .line 839
    invoke-virtual {p1, v2, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object p1

    .line 843
    if-ne p1, v0, :cond_16

    .line 844
    .line 845
    return-object v0

    .line 846
    :cond_16
    :goto_d
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 850
    .line 851
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object p1

    .line 855
    goto :goto_f

    .line 856
    :cond_17
    const-string p1, "WebView is missing."

    .line 857
    .line 858
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 859
    .line 860
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 864
    :goto_e
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 865
    .line 866
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    :goto_f
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_18

    .line 879
    .line 880
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    goto :goto_10

    .line 885
    :cond_18
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    if-eqz v0, :cond_19

    .line 890
    .line 891
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object p1

    .line 899
    :cond_19
    :goto_10
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 900
    .line 901
    .line 902
    move-result-object p1

    .line 903
    return-object p1

    .line 904
    :goto_11
    throw p1

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
