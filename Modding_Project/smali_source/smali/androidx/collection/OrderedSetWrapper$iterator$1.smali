.class final Landroidx/collection/OrderedSetWrapper$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "OrderedScatterSet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/OrderedSetWrapper;->iterator()Ljava/util/Iterator;
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
    c = "androidx.collection.OrderedSetWrapper$iterator$1"
    f = "OrderedScatterSet.kt"
    l = {
        0x5ae
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedSetWrapper$iterator$1\n+ 2 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 3 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1511:1\n301#2,7:1512\n308#2,4:1520\n1123#3:1519\n*S KotlinDebug\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedSetWrapper$iterator$1\n*L\n1454#1:1512,7\n1454#1:1520,4\n1454#1:1519\n*E\n"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/OrderedSetWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/OrderedSetWrapper<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/OrderedSetWrapper;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/OrderedSetWrapper<",
            "TE;>;",
            "Lrs/c<",
            "-",
            "Landroidx/collection/OrderedSetWrapper$iterator$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->this$0:Landroidx/collection/OrderedSetWrapper;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
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
    new-instance v0, Landroidx/collection/OrderedSetWrapper$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->this$0:Landroidx/collection/OrderedSetWrapper;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/collection/OrderedSetWrapper$iterator$1;-><init>(Landroidx/collection/OrderedSetWrapper;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/OrderedSetWrapper$iterator$1;->invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/collection/OrderedSetWrapper$iterator$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/collection/OrderedSetWrapper$iterator$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/OrderedSetWrapper$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->label:I

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
    iget v1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->I$0:I

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, [J

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Lkotlin/sequences/i;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lkotlin/sequences/i;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->this$0:Landroidx/collection/OrderedSetWrapper;

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/collection/OrderedSetWrapper;->access$getParent$p(Landroidx/collection/OrderedSetWrapper;)Landroidx/collection/OrderedScatterSet;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, v1, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v4, v1, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 54
    .line 55
    iget v1, v1, Landroidx/collection/OrderedScatterSet;->tail:I

    .line 56
    .line 57
    move-object v5, p1

    .line 58
    move-object v10, v4

    .line 59
    move-object v4, v3

    .line 60
    move-object v3, v10

    .line 61
    :goto_0
    const p1, 0x7fffffff

    .line 62
    .line 63
    .line 64
    if-eq v1, p1, :cond_3

    .line 65
    .line 66
    aget-wide v6, v3, v1

    .line 67
    .line 68
    const/16 p1, 0x1f

    .line 69
    .line 70
    shr-long/2addr v6, p1

    .line 71
    const-wide/32 v8, 0x7fffffff

    .line 72
    .line 73
    .line 74
    and-long/2addr v6, v8

    .line 75
    long-to-int p1, v6

    .line 76
    aget-object v1, v4, v1

    .line 77
    .line 78
    iput-object v5, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v4, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object v3, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->L$2:Ljava/lang/Object;

    .line 83
    .line 84
    iput p1, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->I$0:I

    .line 85
    .line 86
    iput v2, p0, Landroidx/collection/OrderedSetWrapper$iterator$1;->label:I

    .line 87
    .line 88
    invoke-virtual {v5, v1, p0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-ne v1, v0, :cond_2

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_2
    move v1, p1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
