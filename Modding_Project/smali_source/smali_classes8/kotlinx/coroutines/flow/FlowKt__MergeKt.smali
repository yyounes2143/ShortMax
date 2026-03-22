.class final synthetic Lkotlinx/coroutines/flow/FlowKt__MergeKt;
.super Ljava/lang/Object;
.source "Merge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n49#2:215\n51#2:219\n49#2:220\n51#2:224\n46#3:216\n51#3:218\n46#3:221\n51#3:223\n105#4:217\n105#4:222\n105#4:225\n1#5:226\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n43#1:215\n43#1:219\n70#1:220\n70#1:224\n43#1:216\n43#1:218\n70#1:221\n70#1:223\n43#1:217\n70#1:222\n78#1:225\n*E\n"
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7fffffff

    .line 3
    .line 4
    .line 5
    const-string v2, "kotlinx.coroutines.flow.defaultConcurrency"

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Lmt/b0;->b(Ljava/lang/String;III)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->a:I

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lkt/b;ILkotlin/jvm/functions/Function2;)Lkt/b;
    .locals 1
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;I",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lrs/c<",
            "-",
            "Lkt/b<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;-><init>(Lkt/b;Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/c;->E(Lkt/b;I)Lkt/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic b(Lkt/b;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkt/b;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget p1, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->a:I

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/c;->B(Lkt/b;ILkotlin/jvm/functions/Function2;)Lkt/b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final c(Lkt/b;)Lkt/b;
    .locals 1
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+",
            "Lkt/b<",
            "+TT;>;>;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$a;-><init>(Lkt/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d(Lkt/b;I)Lkt/b;
    .locals 9
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+",
            "Lkt/b<",
            "+TT;>;>;I)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lkotlinx/coroutines/flow/c;->D(Lkt/b;)Lkt/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v8, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;

    .line 12
    .line 13
    const/16 v6, 0x1c

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, v8

    .line 20
    move-object v1, p0

    .line 21
    move v2, p1

    .line 22
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;-><init>(Lkt/b;ILkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    move-object p0, v8

    .line 26
    :goto_0
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "Expected positive concurrency level, but had "

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public static final e(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;
    .locals 2
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/c;->X(Lkt/b;Lat/n;)Lkt/b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final f(Ljava/lang/Iterable;)Lkt/b;
    .locals 8
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkt/b<",
            "+TT;>;>;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 2
    .line 3
    const/16 v5, 0xe

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method public static final varargs g([Lkt/b;)Lkt/b;
    .locals 0
    .param p0    # [Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkt/b<",
            "+TT;>;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/collections/n;->Z([Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/flow/c;->L(Ljava/lang/Iterable;)Lkt/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final h(Lkt/b;Lat/n;)Lkt/b;
    .locals 9
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;",
            "Lat/n<",
            "-",
            "Lkt/c<",
            "-TR;>;-TT;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 2
    .line 3
    const/16 v6, 0x1c

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p0

    .line 12
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;-><init>(Lat/n;Lkt/b;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-object v8
.end method
