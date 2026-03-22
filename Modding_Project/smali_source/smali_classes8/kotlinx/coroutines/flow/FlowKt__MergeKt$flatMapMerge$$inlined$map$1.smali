.class public final Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkt/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__MergeKt;->a(Lkt/b;ILkotlin/jvm/functions/Function2;)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkt/b<",
        "Lkt/b<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lkt/b;

.field final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkt/b;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;->a:Lkt/b;

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;->b:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;->a:Lkt/b;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;->b:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2;-><init>(Lkt/c;Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, p2}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1
.end method
