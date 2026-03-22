.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lgt/g0;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
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
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2"
    f = "Recomposer.kt"
    l = {
        0x3e7,
        0x3fb,
        0x3fc
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1894:1\n34#2,4:1895\n496#3:1899\n497#3,5:1901\n495#3,9:1906\n504#3,2:1918\n507#3:1921\n508#3,7:1931\n33#4:1900\n33#4:1927\n33#4:1938\n34#5,3:1915\n38#5:1920\n424#6,5:1922\n429#6,3:1928\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n990#1:1895,4\n1002#1:1899\n1002#1:1901,5\n1002#1:1906,9\n1002#1:1918,2\n1002#1:1921\n1002#1:1931,7\n1002#1:1900\n1003#1:1927\n1014#1:1938\n1002#1:1915,3\n1002#1:1920\n1002#1:1922,5\n1002#1:1928,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Lgt/g0;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, v2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lrs/c;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lrs/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invoke(Lgt/g0;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    if-eq v3, v0, :cond_2

    .line 17
    .line 18
    if-eq v3, v5, :cond_1

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_b

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lkotlinx/coroutines/r;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :cond_2
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlinx/coroutines/r;

    .line 47
    .line 48
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v8, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 51
    .line 52
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Lgt/g0;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    move-object v15, v9

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v8, v3

    .line 68
    check-cast v8, Lgt/g0;

    .line 69
    .line 70
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 73
    .line 74
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 75
    .line 76
    sget-object v10, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 77
    .line 78
    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-nez v9, :cond_5

    .line 83
    .line 84
    move v9, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move v9, v6

    .line 87
    :goto_0
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 88
    .line 89
    if-nez v9, :cond_6

    .line 90
    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v12, "recomposeCoroutineContext may not contain a Job; found "

    .line 97
    .line 98
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-interface {v11, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-static {v9}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-interface {v8}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 120
    .line 121
    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-interface {v8}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-static {v10}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v10}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-static {v9}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    new-instance v15, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 146
    .line 147
    invoke-direct {v15}, Landroidx/compose/runtime/ProduceFrameSignal;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v11, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    .line 151
    .line 152
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 153
    .line 154
    invoke-direct {v11, v9, v3, v15, v7}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lrs/c;)V

    .line 155
    .line 156
    .line 157
    const/4 v12, 0x3

    .line 158
    const/4 v13, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, 0x0

    .line 161
    invoke-static/range {v8 .. v13}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    move-object v9, v14

    .line 166
    move-object v8, v15

    .line 167
    :goto_1
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 168
    .line 169
    invoke-static {v10}, Landroidx/compose/runtime/Recomposer;->access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-eqz v10, :cond_d

    .line 174
    .line 175
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 176
    .line 177
    iput-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 182
    .line 183
    iput v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 184
    .line 185
    invoke-static {v10, v1}, Landroidx/compose/runtime/Recomposer;->access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    if-ne v10, v2, :cond_3

    .line 190
    .line 191
    return-object v2

    .line 192
    :goto_2
    iget-object v14, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 193
    .line 194
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    monitor-enter v9

    .line 199
    :try_start_0
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-virtual {v10}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-eqz v11, :cond_7

    .line 208
    .line 209
    new-instance v11, Landroidx/collection/MutableScatterSet;

    .line 210
    .line 211
    invoke-direct {v11, v6, v0, v7}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v14, v11}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    goto/16 :goto_9

    .line 220
    .line 221
    :cond_7
    :goto_3
    monitor-exit v9

    .line 222
    invoke-static {v10}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    move-object v10, v9

    .line 227
    check-cast v10, Ljava/util/Collection;

    .line 228
    .line 229
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-nez v10, :cond_8

    .line 234
    .line 235
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$knownCompositionsLocked(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    move-object v11, v10

    .line 240
    check-cast v11, Ljava/util/Collection;

    .line 241
    .line 242
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    move v12, v6

    .line 247
    :goto_4
    if-ge v12, v11, :cond_8

    .line 248
    .line 249
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 254
    .line 255
    invoke-interface {v13, v9}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 256
    .line 257
    .line 258
    add-int/2addr v12, v0

    .line 259
    goto :goto_4

    .line 260
    :cond_8
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    iget-object v13, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    move v11, v6

    .line 271
    :goto_5
    if-ge v11, v12, :cond_9

    .line 272
    .line 273
    aget-object v9, v13, v11

    .line 274
    .line 275
    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    .line 276
    .line 277
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    monitor-enter v10

    .line 282
    :try_start_1
    invoke-static {v14}, Landroidx/compose/runtime/Recomposer;->access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I

    .line 283
    .line 284
    .line 285
    move-result v16

    .line 286
    add-int/lit8 v6, v16, 0x1

    .line 287
    .line 288
    invoke-static {v14, v6}, Landroidx/compose/runtime/Recomposer;->access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    .line 290
    .line 291
    monitor-exit v10

    .line 292
    invoke-static {v9}, Landroidx/compose/runtime/CompositionKt;->getRecomposeCoroutineContext(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    new-instance v6, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;

    .line 297
    .line 298
    invoke-direct {v6, v14, v9, v7}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Lrs/c;)V

    .line 299
    .line 300
    .line 301
    const/16 v16, 0x2

    .line 302
    .line 303
    const/16 v17, 0x0

    .line 304
    .line 305
    const/16 v18, 0x0

    .line 306
    .line 307
    move-object v9, v15

    .line 308
    move/from16 v19, v11

    .line 309
    .line 310
    move-object/from16 v11, v18

    .line 311
    .line 312
    move/from16 v18, v12

    .line 313
    .line 314
    move-object v12, v6

    .line 315
    move-object v6, v13

    .line 316
    move/from16 v13, v16

    .line 317
    .line 318
    move-object/from16 v16, v14

    .line 319
    .line 320
    move-object/from16 v14, v17

    .line 321
    .line 322
    invoke-static/range {v9 .. v14}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 323
    .line 324
    .line 325
    add-int/lit8 v11, v19, 0x1

    .line 326
    .line 327
    move-object v13, v6

    .line 328
    move-object/from16 v14, v16

    .line 329
    .line 330
    move/from16 v12, v18

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    goto :goto_5

    .line 334
    :catchall_1
    move-exception v0

    .line 335
    monitor-exit v10

    .line 336
    throw v0

    .line 337
    :cond_9
    move-object/from16 v16, v14

    .line 338
    .line 339
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 344
    .line 345
    .line 346
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    monitor-enter v6

    .line 351
    :try_start_2
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    if-nez v9, :cond_c

    .line 356
    .line 357
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 358
    .line 359
    monitor-exit v6

    .line 360
    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 361
    .line 362
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 367
    .line 368
    monitor-enter v6

    .line 369
    :try_start_3
    invoke-static {v9}, Landroidx/compose/runtime/Recomposer;->access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    if-eqz v9, :cond_a

    .line 374
    .line 375
    invoke-virtual {v8}, Landroidx/compose/runtime/ProduceFrameSignal;->requestFrameLocked()Lrs/c;

    .line 376
    .line 377
    .line 378
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 379
    goto :goto_6

    .line 380
    :catchall_2
    move-exception v0

    .line 381
    goto :goto_7

    .line 382
    :cond_a
    move-object v9, v7

    .line 383
    :goto_6
    monitor-exit v6

    .line 384
    if-eqz v9, :cond_b

    .line 385
    .line 386
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 387
    .line 388
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 389
    .line 390
    invoke-static {v6}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-interface {v9, v6}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_b
    move-object v9, v15

    .line 398
    const/4 v6, 0x0

    .line 399
    goto/16 :goto_1

    .line 400
    .line 401
    :goto_7
    monitor-exit v6

    .line 402
    throw v0

    .line 403
    :catchall_3
    move-exception v0

    .line 404
    goto :goto_8

    .line 405
    :cond_c
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 406
    .line 407
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    .line 408
    .line 409
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 413
    :goto_8
    monitor-exit v6

    .line 414
    throw v0

    .line 415
    :goto_9
    monitor-exit v9

    .line 416
    throw v0

    .line 417
    :cond_d
    invoke-interface {v9}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iput-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 426
    .line 427
    iput-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 428
    .line 429
    iput-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 430
    .line 431
    iput v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 432
    .line 433
    invoke-static {v0, v1}, Lkotlinx/coroutines/t;->g(Lkotlinx/coroutines/r;Lrs/c;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-ne v0, v2, :cond_e

    .line 438
    .line 439
    return-object v2

    .line 440
    :cond_e
    move-object v0, v3

    .line 441
    :goto_a
    iput-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 442
    .line 443
    iput v4, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 444
    .line 445
    invoke-static {v0, v1}, Lkotlinx/coroutines/t;->g(Lkotlinx/coroutines/r;Lrs/c;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-ne v0, v2, :cond_f

    .line 450
    .line 451
    return-object v2

    .line 452
    :cond_f
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 453
    .line 454
    return-object v0
.end method
