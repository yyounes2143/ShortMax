.class final Landroidx/collection/Entries$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ScatterMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/Entries;->iterator()Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry<",
        "+TK;+TV;>;>;",
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
    c = "androidx.collection.Entries$iterator$1"
    f = "ScatterMap.kt"
    l = {
        0x586
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/Entries$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/Entries$iterator$1\n*L\n1412#1:1788,6\n1412#1:1795,3\n1412#1:1799,9\n1412#1:1794\n1412#1:1798\n*E\n"
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

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/Entries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/Entries<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/Entries;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/Entries<",
            "TK;TV;>;",
            "Lrs/c<",
            "-",
            "Landroidx/collection/Entries$iterator$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

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
    new-instance v0, Landroidx/collection/Entries$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/collection/Entries$iterator$1;-><init>(Landroidx/collection/Entries;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/Entries$iterator$1;->invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;

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
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Entries$iterator$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/collection/Entries$iterator$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/Entries$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Landroidx/collection/Entries$iterator$1;->label:I

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v5, :cond_0

    .line 15
    .line 16
    iget v2, v0, Landroidx/collection/Entries$iterator$1;->I$3:I

    .line 17
    .line 18
    iget v6, v0, Landroidx/collection/Entries$iterator$1;->I$2:I

    .line 19
    .line 20
    iget-wide v7, v0, Landroidx/collection/Entries$iterator$1;->J$0:J

    .line 21
    .line 22
    iget v9, v0, Landroidx/collection/Entries$iterator$1;->I$1:I

    .line 23
    .line 24
    iget v10, v0, Landroidx/collection/Entries$iterator$1;->I$0:I

    .line 25
    .line 26
    iget-object v11, v0, Landroidx/collection/Entries$iterator$1;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v11, [J

    .line 29
    .line 30
    iget-object v12, v0, Landroidx/collection/Entries$iterator$1;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v12, Landroidx/collection/Entries;

    .line 33
    .line 34
    iget-object v13, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v13, Lkotlin/sequences/i;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lkotlin/sequences/i;

    .line 57
    .line 58
    iget-object v6, v0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 59
    .line 60
    invoke-static {v6}, Landroidx/collection/Entries;->access$getParent$p(Landroidx/collection/Entries;)Landroidx/collection/ScatterMap;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, v0, Landroidx/collection/Entries$iterator$1;->this$0:Landroidx/collection/Entries;

    .line 65
    .line 66
    iget-object v6, v6, Landroidx/collection/ScatterMap;->metadata:[J

    .line 67
    .line 68
    array-length v8, v6

    .line 69
    add-int/lit8 v8, v8, -0x2

    .line 70
    .line 71
    if-ltz v8, :cond_6

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    :goto_0
    aget-wide v10, v6, v9

    .line 75
    .line 76
    not-long v12, v10

    .line 77
    const/4 v14, 0x7

    .line 78
    shl-long/2addr v12, v14

    .line 79
    and-long/2addr v12, v10

    .line 80
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    and-long/2addr v12, v14

    .line 86
    cmp-long v12, v12, v14

    .line 87
    .line 88
    if-eqz v12, :cond_5

    .line 89
    .line 90
    sub-int v12, v9, v8

    .line 91
    .line 92
    not-int v12, v12

    .line 93
    ushr-int/lit8 v12, v12, 0x1f

    .line 94
    .line 95
    rsub-int/lit8 v12, v12, 0x8

    .line 96
    .line 97
    move-object v13, v2

    .line 98
    const/4 v2, 0x0

    .line 99
    move-wide/from16 v18, v10

    .line 100
    .line 101
    move-object v11, v6

    .line 102
    move v10, v8

    .line 103
    move v6, v12

    .line 104
    move-object v12, v7

    .line 105
    move-wide/from16 v7, v18

    .line 106
    .line 107
    :goto_1
    if-ge v2, v6, :cond_4

    .line 108
    .line 109
    const-wide/16 v14, 0xff

    .line 110
    .line 111
    and-long/2addr v14, v7

    .line 112
    const-wide/16 v16, 0x80

    .line 113
    .line 114
    cmp-long v14, v14, v16

    .line 115
    .line 116
    if-gez v14, :cond_3

    .line 117
    .line 118
    shl-int/lit8 v14, v9, 0x3

    .line 119
    .line 120
    add-int/2addr v14, v2

    .line 121
    new-instance v15, Landroidx/collection/MapEntry;

    .line 122
    .line 123
    invoke-static {v12}, Landroidx/collection/Entries;->access$getParent$p(Landroidx/collection/Entries;)Landroidx/collection/ScatterMap;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v3, v3, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 128
    .line 129
    aget-object v3, v3, v14

    .line 130
    .line 131
    invoke-static {v12}, Landroidx/collection/Entries;->access$getParent$p(Landroidx/collection/Entries;)Landroidx/collection/ScatterMap;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iget-object v4, v4, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 136
    .line 137
    aget-object v4, v4, v14

    .line 138
    .line 139
    invoke-direct {v15, v3, v4}, Landroidx/collection/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput-object v13, v0, Landroidx/collection/Entries$iterator$1;->L$0:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v12, v0, Landroidx/collection/Entries$iterator$1;->L$1:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v11, v0, Landroidx/collection/Entries$iterator$1;->L$2:Ljava/lang/Object;

    .line 147
    .line 148
    iput v10, v0, Landroidx/collection/Entries$iterator$1;->I$0:I

    .line 149
    .line 150
    iput v9, v0, Landroidx/collection/Entries$iterator$1;->I$1:I

    .line 151
    .line 152
    iput-wide v7, v0, Landroidx/collection/Entries$iterator$1;->J$0:J

    .line 153
    .line 154
    iput v6, v0, Landroidx/collection/Entries$iterator$1;->I$2:I

    .line 155
    .line 156
    iput v2, v0, Landroidx/collection/Entries$iterator$1;->I$3:I

    .line 157
    .line 158
    iput v5, v0, Landroidx/collection/Entries$iterator$1;->label:I

    .line 159
    .line 160
    invoke-virtual {v13, v15, v0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-ne v3, v1, :cond_2

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_2
    :goto_2
    const/16 v3, 0x8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    move v3, v4

    .line 171
    :goto_3
    shr-long/2addr v7, v3

    .line 172
    add-int/2addr v2, v5

    .line 173
    move v4, v3

    .line 174
    goto :goto_1

    .line 175
    :cond_4
    move v3, v4

    .line 176
    if-ne v6, v3, :cond_6

    .line 177
    .line 178
    move v8, v10

    .line 179
    move-object v6, v11

    .line 180
    move-object v7, v12

    .line 181
    move-object v2, v13

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    move v3, v4

    .line 184
    :goto_4
    if-eq v9, v8, :cond_6

    .line 185
    .line 186
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    move v4, v3

    .line 189
    goto :goto_0

    .line 190
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object v1
.end method
