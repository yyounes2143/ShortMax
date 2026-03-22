.class final Landroidx/collection/MutableValues$iterator$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ScatterMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableValues$iterator$1;-><init>(Landroidx/collection/MutableValues;)V
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
        "-",
        "Ljava/lang/Integer;",
        ">;",
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
    c = "androidx.collection.MutableValues$iterator$1$iterator$1"
    f = "ScatterMap.kt"
    l = {
        0x6a0
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableValues$iterator$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableValues$iterator$1$iterator$1\n*L\n1696#1:1788,6\n1696#1:1795,3\n1696#1:1799,9\n1696#1:1794\n1696#1:1798\n*E\n"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/MutableValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableValues<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/MutableValues;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableValues<",
            "TK;TV;>;",
            "Lrs/c<",
            "-",
            "Landroidx/collection/MutableValues$iterator$1$iterator$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableValues;

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
    new-instance v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableValues;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/collection/MutableValues$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableValues;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableValues$iterator$1$iterator$1;->invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/i<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableValues$iterator$1$iterator$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableValues$iterator$1$iterator$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableValues$iterator$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v5, :cond_0

    .line 16
    .line 17
    iget v2, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$3:I

    .line 18
    .line 19
    iget v6, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$2:I

    .line 20
    .line 21
    iget-wide v7, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->J$0:J

    .line 22
    .line 23
    iget v9, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$1:I

    .line 24
    .line 25
    iget v10, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$0:I

    .line 26
    .line 27
    iget-object v11, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v11, [J

    .line 30
    .line 31
    iget-object v12, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v12, Lkotlin/sequences/i;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lkotlin/sequences/i;

    .line 54
    .line 55
    iget-object v6, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableValues;

    .line 56
    .line 57
    invoke-static {v6}, Landroidx/collection/MutableValues;->access$getParent$p(Landroidx/collection/MutableValues;)Landroidx/collection/MutableScatterMap;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v6, v6, Landroidx/collection/ScatterMap;->metadata:[J

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    add-int/lit8 v7, v7, -0x2

    .line 65
    .line 66
    if-ltz v7, :cond_5

    .line 67
    .line 68
    move v8, v3

    .line 69
    :goto_0
    aget-wide v9, v6, v8

    .line 70
    .line 71
    not-long v11, v9

    .line 72
    const/4 v13, 0x7

    .line 73
    shl-long/2addr v11, v13

    .line 74
    and-long/2addr v11, v9

    .line 75
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    and-long/2addr v11, v13

    .line 81
    cmp-long v11, v11, v13

    .line 82
    .line 83
    if-eqz v11, :cond_4

    .line 84
    .line 85
    sub-int v11, v8, v7

    .line 86
    .line 87
    not-int v11, v11

    .line 88
    ushr-int/lit8 v11, v11, 0x1f

    .line 89
    .line 90
    rsub-int/lit8 v11, v11, 0x8

    .line 91
    .line 92
    move-object v12, v2

    .line 93
    move v2, v3

    .line 94
    move/from16 v17, v11

    .line 95
    .line 96
    move-object v11, v6

    .line 97
    move/from16 v6, v17

    .line 98
    .line 99
    move-wide/from16 v18, v9

    .line 100
    .line 101
    move v10, v7

    .line 102
    move v9, v8

    .line 103
    move-wide/from16 v7, v18

    .line 104
    .line 105
    :goto_1
    if-ge v2, v6, :cond_3

    .line 106
    .line 107
    const-wide/16 v13, 0xff

    .line 108
    .line 109
    and-long/2addr v13, v7

    .line 110
    const-wide/16 v15, 0x80

    .line 111
    .line 112
    cmp-long v13, v13, v15

    .line 113
    .line 114
    if-gez v13, :cond_2

    .line 115
    .line 116
    shl-int/lit8 v13, v9, 0x3

    .line 117
    .line 118
    add-int/2addr v13, v2

    .line 119
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    iput-object v12, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v11, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    iput v10, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$0:I

    .line 128
    .line 129
    iput v9, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$1:I

    .line 130
    .line 131
    iput-wide v7, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->J$0:J

    .line 132
    .line 133
    iput v6, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$2:I

    .line 134
    .line 135
    iput v2, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->I$3:I

    .line 136
    .line 137
    iput v5, v0, Landroidx/collection/MutableValues$iterator$1$iterator$1;->label:I

    .line 138
    .line 139
    invoke-virtual {v12, v13, v0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    if-ne v13, v1, :cond_2

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_2
    :goto_2
    shr-long/2addr v7, v4

    .line 147
    add-int/2addr v2, v5

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    if-ne v6, v4, :cond_5

    .line 150
    .line 151
    move v8, v9

    .line 152
    move v7, v10

    .line 153
    move-object v6, v11

    .line 154
    move-object v2, v12

    .line 155
    :cond_4
    if-eq v8, v7, :cond_5

    .line 156
    .line 157
    add-int/lit8 v8, v8, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object v1
.end method
