.class final Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lat/n;Lrs/c;)Ljava/lang/Object;
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
    c = "androidx.compose.runtime.Recomposer$recompositionRunner$2"
    f = "Recomposer.kt"
    l = {
        0x488
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1894:1\n34#2,5:1895\n33#3:1900\n33#3:1901\n41#4,3:1902\n46#4:1930\n48#4:1933\n231#5,3:1905\n200#5,7:1908\n211#5,3:1916\n214#5,2:1920\n217#5,6:1923\n234#5:1929\n1399#6:1915\n1270#6:1919\n54#7:1922\n1863#8,2:1931\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n*L\n1158#1:1895,5\n1163#1:1900\n1133#1:1901\n1136#1:1902,3\n1136#1:1930\n1136#1:1933\n1136#1:1905,3\n1136#1:1908,7\n1136#1:1916,3\n1136#1:1920,2\n1136#1:1923,6\n1136#1:1929\n1136#1:1915\n1136#1:1919\n1139#1:1922\n1136#1:1931,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $block:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic $parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Lat/n;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/runtime/Recomposer$recompositionRunner$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lat/n;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

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

.method public static synthetic i(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend$lambda$2(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkt/e;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    .line 18
    .line 19
    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ltz v3, :cond_7

    .line 26
    .line 27
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    instance-of v4, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 32
    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    check-cast v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime()Landroidx/collection/ScatterSet;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v4, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 44
    .line 45
    array-length v5, v0

    .line 46
    add-int/lit8 v5, v5, -0x2

    .line 47
    .line 48
    if-ltz v5, :cond_6

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    move v7, v6

    .line 52
    :goto_0
    aget-wide v8, v0, v7

    .line 53
    .line 54
    not-long v10, v8

    .line 55
    const/4 v12, 0x7

    .line 56
    shl-long/2addr v10, v12

    .line 57
    and-long/2addr v10, v8

    .line 58
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    and-long/2addr v10, v12

    .line 64
    cmp-long v10, v10, v12

    .line 65
    .line 66
    if-eqz v10, :cond_3

    .line 67
    .line 68
    sub-int v10, v7, v5

    .line 69
    .line 70
    not-int v10, v10

    .line 71
    ushr-int/lit8 v10, v10, 0x1f

    .line 72
    .line 73
    const/16 v11, 0x8

    .line 74
    .line 75
    rsub-int/lit8 v10, v10, 0x8

    .line 76
    .line 77
    move v12, v6

    .line 78
    :goto_1
    if-ge v12, v10, :cond_2

    .line 79
    .line 80
    const-wide/16 v13, 0xff

    .line 81
    .line 82
    and-long/2addr v13, v8

    .line 83
    const-wide/16 v15, 0x80

    .line 84
    .line 85
    cmp-long v13, v13, v15

    .line 86
    .line 87
    if-gez v13, :cond_1

    .line 88
    .line 89
    shl-int/lit8 v13, v7, 0x3

    .line 90
    .line 91
    add-int/2addr v13, v12

    .line 92
    aget-object v13, v4, v13

    .line 93
    .line 94
    instance-of v14, v13, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 95
    .line 96
    if-eqz v14, :cond_0

    .line 97
    .line 98
    move-object v14, v13

    .line 99
    check-cast v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 100
    .line 101
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-nez v14, :cond_0

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_5

    .line 114
    :cond_0
    invoke-virtual {v3, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_2
    shr-long/2addr v8, v11

    .line 118
    add-int/2addr v12, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    if-ne v10, v11, :cond_6

    .line 121
    .line 122
    :cond_3
    if-eq v7, v5, :cond_6

    .line 123
    .line 124
    add-int/2addr v7, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    instance-of v5, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 143
    .line 144
    if-eqz v5, :cond_5

    .line 145
    .line 146
    move-object v5, v4

    .line 147
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 148
    .line 149
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;

    .line 165
    .line 166
    .line 167
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    const/4 v0, 0x0

    .line 170
    :goto_4
    monitor-exit v2

    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 174
    .line 175
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object v0

    .line 187
    :goto_5
    monitor-exit v2

    .line 188
    throw v0
.end method


# virtual methods
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
    new-instance v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lat/n;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lat/n;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

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
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lkotlinx/coroutines/r;

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lgt/g0;

    .line 43
    .line 44
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 53
    .line 54
    invoke-static {p1, v1}, Landroidx/compose/runtime/Recomposer;->access$registerRunnerJob(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/r;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 60
    .line 61
    new-instance v5, Landroidx/compose/runtime/a0;

    .line 62
    .line 63
    invoke-direct {v5, v4}, Landroidx/compose/runtime/a0;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v4, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 73
    .line 74
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Landroidx/compose/runtime/Recomposer$Companion;->access$addRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 79
    .line 80
    .line 81
    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 82
    .line 83
    invoke-static {v4}, Landroidx/compose/runtime/Recomposer;->access$knownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object v5, v4

    .line 88
    check-cast v5, Ljava/util/Collection;

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v6, 0x0

    .line 95
    :goto_0
    if-ge v6, v5, :cond_2

    .line 96
    .line 97
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .line 102
    .line 103
    invoke-interface {v7}, Landroidx/compose/runtime/ControlledComposition;->invalidateAll()V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move-object v8, v0

    .line 111
    move-object v0, p1

    .line 112
    move-object p1, v8

    .line 113
    goto :goto_4

    .line 114
    :cond_2
    new-instance v4, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$2;

    .line 115
    .line 116
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lat/n;

    .line 117
    .line 118
    iget-object v6, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 119
    .line 120
    invoke-direct {v4, v5, v6, v2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$2;-><init>(Lat/n;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)V

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    iput v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

    .line 128
    .line 129
    invoke-static {v4, p0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    if-ne v3, v0, :cond_3

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_3
    move-object v0, p1

    .line 137
    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 141
    .line 142
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 147
    .line 148
    monitor-enter p1

    .line 149
    :try_start_2
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/r;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-ne v3, v1, :cond_4

    .line 154
    .line 155
    invoke-static {v0, v2}, Landroidx/compose/runtime/Recomposer;->access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/r;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_2
    move-exception v0

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    .line 163
    .line 164
    monitor-exit p1

    .line 165
    sget-object p1, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    .line 166
    .line 167
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 168
    .line 169
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {p1, v0}, Landroidx/compose/runtime/Recomposer$Companion;->access$removeRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 174
    .line 175
    .line 176
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object p1

    .line 179
    :goto_3
    monitor-exit p1

    .line 180
    throw v0

    .line 181
    :goto_4
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 185
    .line 186
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 191
    .line 192
    monitor-enter v0

    .line 193
    :try_start_3
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/r;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-ne v4, v1, :cond_5

    .line 198
    .line 199
    invoke-static {v3, v2}, Landroidx/compose/runtime/Recomposer;->access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/r;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catchall_3
    move-exception p1

    .line 204
    goto :goto_6

    .line 205
    :cond_5
    :goto_5
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 206
    .line 207
    .line 208
    monitor-exit v0

    .line 209
    sget-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    .line 210
    .line 211
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 212
    .line 213
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroidx/compose/runtime/Recomposer$Companion;->access$removeRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :goto_6
    monitor-exit v0

    .line 222
    throw p1
.end method
