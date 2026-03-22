.class final Landroidx/collection/MutableEntries$iterator$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ScatterMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableEntries$iterator$1;-><init>(Landroidx/collection/MutableEntries;)V
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
        "TK;TV;>;>;",
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
    c = "androidx.collection.MutableEntries$iterator$1$1"
    f = "ScatterMap.kt"
    l = {
        0x602
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableEntries$iterator$1$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableEntries$iterator$1$1\n*L\n1536#1:1788,6\n1536#1:1795,3\n1536#1:1799,9\n1536#1:1794\n1536#1:1798\n*E\n"
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

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/MutableEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableEntries<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/collection/MutableEntries$iterator$1;


# direct methods
.method constructor <init>(Landroidx/collection/MutableEntries;Landroidx/collection/MutableEntries$iterator$1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableEntries<",
            "TK;TV;>;",
            "Landroidx/collection/MutableEntries$iterator$1;",
            "Lrs/c<",
            "-",
            "Landroidx/collection/MutableEntries$iterator$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableEntries$iterator$1$1;->this$0:Landroidx/collection/MutableEntries;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/collection/MutableEntries$iterator$1$1;->this$1:Landroidx/collection/MutableEntries$iterator$1;

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
    new-instance v0, Landroidx/collection/MutableEntries$iterator$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableEntries$iterator$1$1;->this$0:Landroidx/collection/MutableEntries;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/collection/MutableEntries$iterator$1$1;->this$1:Landroidx/collection/MutableEntries$iterator$1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/collection/MutableEntries$iterator$1$1;-><init>(Landroidx/collection/MutableEntries;Landroidx/collection/MutableEntries$iterator$1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/i;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableEntries$iterator$1$1;->invoke(Lkotlin/sequences/i;Lrs/c;)Ljava/lang/Object;

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
            "TK;TV;>;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableEntries$iterator$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableEntries$iterator$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableEntries$iterator$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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
    iget v2, v0, Landroidx/collection/MutableEntries$iterator$1$1;->label:I

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
    iget v2, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$3:I

    .line 17
    .line 18
    iget v6, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$2:I

    .line 19
    .line 20
    iget-wide v7, v0, Landroidx/collection/MutableEntries$iterator$1$1;->J$0:J

    .line 21
    .line 22
    iget v9, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$1:I

    .line 23
    .line 24
    iget v10, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$0:I

    .line 25
    .line 26
    iget-object v11, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$3:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v11, [J

    .line 29
    .line 30
    iget-object v12, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$2:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v12, Landroidx/collection/MutableEntries;

    .line 33
    .line 34
    iget-object v13, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v13, Landroidx/collection/MutableEntries$iterator$1;

    .line 37
    .line 38
    iget-object v14, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v14, Lkotlin/sequences/i;

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move v3, v5

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lkotlin/sequences/i;

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/collection/MutableEntries$iterator$1$1;->this$0:Landroidx/collection/MutableEntries;

    .line 64
    .line 65
    invoke-static {v6}, Landroidx/collection/MutableEntries;->access$getParent$p(Landroidx/collection/MutableEntries;)Landroidx/collection/MutableScatterMap;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object v7, v0, Landroidx/collection/MutableEntries$iterator$1$1;->this$1:Landroidx/collection/MutableEntries$iterator$1;

    .line 70
    .line 71
    iget-object v8, v0, Landroidx/collection/MutableEntries$iterator$1$1;->this$0:Landroidx/collection/MutableEntries;

    .line 72
    .line 73
    iget-object v6, v6, Landroidx/collection/ScatterMap;->metadata:[J

    .line 74
    .line 75
    array-length v9, v6

    .line 76
    add-int/lit8 v9, v9, -0x2

    .line 77
    .line 78
    if-ltz v9, :cond_6

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    :goto_0
    aget-wide v11, v6, v10

    .line 82
    .line 83
    not-long v13, v11

    .line 84
    const/4 v15, 0x7

    .line 85
    shl-long/2addr v13, v15

    .line 86
    and-long/2addr v13, v11

    .line 87
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    and-long/2addr v13, v15

    .line 93
    cmp-long v13, v13, v15

    .line 94
    .line 95
    if-eqz v13, :cond_5

    .line 96
    .line 97
    sub-int v13, v10, v9

    .line 98
    .line 99
    not-int v13, v13

    .line 100
    ushr-int/lit8 v13, v13, 0x1f

    .line 101
    .line 102
    rsub-int/lit8 v13, v13, 0x8

    .line 103
    .line 104
    move-object v14, v2

    .line 105
    const/4 v2, 0x0

    .line 106
    move-wide/from16 v19, v11

    .line 107
    .line 108
    move-object v11, v6

    .line 109
    move-object v12, v8

    .line 110
    move v6, v13

    .line 111
    move-object v13, v7

    .line 112
    move-wide/from16 v7, v19

    .line 113
    .line 114
    move/from16 v21, v10

    .line 115
    .line 116
    move v10, v9

    .line 117
    move/from16 v9, v21

    .line 118
    .line 119
    :goto_1
    if-ge v2, v6, :cond_4

    .line 120
    .line 121
    const-wide/16 v15, 0xff

    .line 122
    .line 123
    and-long/2addr v15, v7

    .line 124
    const-wide/16 v17, 0x80

    .line 125
    .line 126
    cmp-long v15, v15, v17

    .line 127
    .line 128
    if-gez v15, :cond_3

    .line 129
    .line 130
    shl-int/lit8 v15, v9, 0x3

    .line 131
    .line 132
    add-int/2addr v15, v2

    .line 133
    invoke-virtual {v13, v15}, Landroidx/collection/MutableEntries$iterator$1;->setCurrent(I)V

    .line 134
    .line 135
    .line 136
    new-instance v15, Landroidx/collection/MutableMapEntry;

    .line 137
    .line 138
    invoke-static {v12}, Landroidx/collection/MutableEntries;->access$getParent$p(Landroidx/collection/MutableEntries;)Landroidx/collection/MutableScatterMap;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v3, v3, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {v12}, Landroidx/collection/MutableEntries;->access$getParent$p(Landroidx/collection/MutableEntries;)Landroidx/collection/MutableScatterMap;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget-object v4, v4, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v13}, Landroidx/collection/MutableEntries$iterator$1;->getCurrent()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-direct {v15, v3, v4, v5}, Landroidx/collection/MutableMapEntry;-><init>([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    iput-object v14, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v13, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v12, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v11, v0, Landroidx/collection/MutableEntries$iterator$1$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput v10, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$0:I

    .line 166
    .line 167
    iput v9, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$1:I

    .line 168
    .line 169
    iput-wide v7, v0, Landroidx/collection/MutableEntries$iterator$1$1;->J$0:J

    .line 170
    .line 171
    iput v6, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$2:I

    .line 172
    .line 173
    iput v2, v0, Landroidx/collection/MutableEntries$iterator$1$1;->I$3:I

    .line 174
    .line 175
    const/4 v3, 0x1

    .line 176
    iput v3, v0, Landroidx/collection/MutableEntries$iterator$1$1;->label:I

    .line 177
    .line 178
    invoke-virtual {v14, v15, v0}, Lkotlin/sequences/i;->a(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-ne v4, v1, :cond_2

    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_2
    :goto_2
    const/16 v4, 0x8

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    move v3, v5

    .line 189
    :goto_3
    shr-long/2addr v7, v4

    .line 190
    add-int/2addr v2, v3

    .line 191
    move v5, v3

    .line 192
    goto :goto_1

    .line 193
    :cond_4
    move v3, v5

    .line 194
    if-ne v6, v4, :cond_6

    .line 195
    .line 196
    move-object v6, v11

    .line 197
    move-object v8, v12

    .line 198
    move-object v7, v13

    .line 199
    move-object v2, v14

    .line 200
    move/from16 v19, v10

    .line 201
    .line 202
    move v10, v9

    .line 203
    move/from16 v9, v19

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    move v3, v5

    .line 207
    :goto_4
    if-eq v10, v9, :cond_6

    .line 208
    .line 209
    add-int/lit8 v10, v10, 0x1

    .line 210
    .line 211
    move v5, v3

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v1
.end method
