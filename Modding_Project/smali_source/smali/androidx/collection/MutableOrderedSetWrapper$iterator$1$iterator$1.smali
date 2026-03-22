.class final Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "OrderedScatterSet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableOrderedSetWrapper$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/i<",
        "-TE;>;",
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
    c = "androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1"
    f = "OrderedScatterSet.kt"
    l = {
        0x5d1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1\n+ 2 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 3 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1511:1\n255#2,6:1512\n261#2,4:1519\n1123#3:1518\n*S KotlinDebug\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1\n*L\n1487#1:1512,6\n1487#1:1519,4\n1487#1:1518\n*E\n"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/MutableOrderedSetWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableOrderedSetWrapper<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/collection/MutableOrderedSetWrapper$iterator$1;


# direct methods
.method constructor <init>(Landroidx/collection/MutableOrderedSetWrapper;Landroidx/collection/MutableOrderedSetWrapper$iterator$1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableOrderedSetWrapper<",
            "TE;>;",
            "Landroidx/collection/MutableOrderedSetWrapper$iterator$1;",
            "Lrs/c<",
            "-",
            "Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedSetWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedSetWrapper$iterator$1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
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
    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedSetWrapper;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedSetWrapper$iterator$1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;Landroidx/collection/MutableOrderedSetWrapper$iterator$1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/i<",
            "-TE;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->I$0:I

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$3:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, [J

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$2:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Landroidx/collection/MutableOrderedSetWrapper;

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Landroidx/collection/MutableOrderedSetWrapper$iterator$1;

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Lkotlin/sequences/i;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lkotlin/sequences/i;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedSetWrapper;

    .line 50
    .line 51
    invoke-static {v1}, Landroidx/collection/MutableOrderedSetWrapper;->access$getParent$p(Landroidx/collection/MutableOrderedSetWrapper;)Landroidx/collection/MutableOrderedScatterSet;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedSetWrapper$iterator$1;

    .line 56
    .line 57
    iget-object v4, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedSetWrapper;

    .line 58
    .line 59
    iget-object v5, v1, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 60
    .line 61
    iget v1, v1, Landroidx/collection/OrderedScatterSet;->tail:I

    .line 62
    .line 63
    move-object v6, p1

    .line 64
    move-object v11, v5

    .line 65
    move-object v5, v3

    .line 66
    move-object v3, v11

    .line 67
    :goto_0
    const p1, 0x7fffffff

    .line 68
    .line 69
    .line 70
    if-eq v1, p1, :cond_3

    .line 71
    .line 72
    aget-wide v7, v3, v1

    .line 73
    .line 74
    const/16 p1, 0x1f

    .line 75
    .line 76
    shr-long/2addr v7, p1

    .line 77
    const-wide/32 v9, 0x7fffffff

    .line 78
    .line 79
    .line 80
    and-long/2addr v7, v9

    .line 81
    long-to-int p1, v7

    .line 82
    invoke-virtual {v5, v1}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1;->setCurrent(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Landroidx/collection/MutableOrderedSetWrapper;->access$getParent$p(Landroidx/collection/MutableOrderedSetWrapper;)Landroidx/collection/MutableOrderedScatterSet;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v7, v7, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 90
    .line 91
    aget-object v1, v7, v1

    .line 92
    .line 93
    iput-object v6, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v5, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v4, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$2:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v3, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->L$3:Ljava/lang/Object;

    .line 100
    .line 101
    iput p1, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->I$0:I

    .line 102
    .line 103
    iput v2, p0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;->label:I

    .line 104
    .line 105
    invoke-virtual {v6, v1, p0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_2

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_2
    move v1, p1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1
.end method
