.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BringIntoViewResponder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->bringChildIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2"
    f = "BringIntoViewResponder.kt"
    l = {
        0xd6,
        0xdf,
        0xe6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field final synthetic $rect:Landroidx/compose/ui/geometry/Rect;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 4
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
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lkotlin/Pair;

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkotlin/Pair;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Lkotlin/Pair;

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 50
    .line 51
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :catchall_1
    move-exception p1

    .line 57
    move-object v0, v3

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lkotlin/Pair;

    .line 63
    .line 64
    :try_start_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lgt/g0;

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_4
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 88
    .line 89
    invoke-interface {v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_5
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 99
    .line 100
    iget-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    .line 101
    .line 102
    invoke-static {v1, v6, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->access$localRectOf(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v7, Lkotlin/Pair;

    .line 115
    .line 116
    invoke-direct {v7, v6, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 120
    .line 121
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v8, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 126
    .line 127
    invoke-static {v8, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 128
    .line 129
    .line 130
    if-eqz p1, :cond_c

    .line 131
    .line 132
    :try_start_3
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    .line 137
    .line 138
    invoke-static {v8, v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->access$completelyOverlaps(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lkotlinx/coroutines/r;

    .line 150
    .line 151
    iput-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    iput v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 158
    .line 159
    invoke-interface {v4, p0}, Lkotlinx/coroutines/r;->join(Lrs/c;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    if-ne v3, v0, :cond_7

    .line 164
    .line 165
    return-object v0

    .line 166
    :cond_7
    move-object v4, v1

    .line 167
    move-object v3, v7

    .line 168
    move-object v1, p1

    .line 169
    :goto_0
    :try_start_4
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 170
    .line 171
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-ne p1, v1, :cond_9

    .line 176
    .line 177
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 178
    .line 179
    iput-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 184
    .line 185
    iput v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 186
    .line 187
    invoke-static {p1, v3, v4, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$dispatchRequest(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    if-ne p1, v0, :cond_8

    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_8
    move-object v0, v3

    .line 195
    :goto_1
    move-object v3, v0

    .line 196
    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 197
    .line 198
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 203
    .line 204
    invoke-static {v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-ne p1, v0, :cond_a

    .line 209
    .line 210
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 211
    .line 212
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 213
    .line 214
    .line 215
    :cond_a
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 216
    .line 217
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-ne p1, v3, :cond_b

    .line 222
    .line 223
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 224
    .line 225
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 226
    .line 227
    .line 228
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :catchall_2
    move-exception p1

    .line 232
    move-object v0, v7

    .line 233
    goto :goto_4

    .line 234
    :cond_c
    :goto_2
    :try_start_5
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 235
    .line 236
    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 237
    .line 238
    iput v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 239
    .line 240
    invoke-static {p1, v7, v1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$dispatchRequest(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;Landroidx/compose/ui/layout/LayoutCoordinates;Lrs/c;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 244
    if-ne p1, v0, :cond_d

    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_d
    move-object v0, v7

    .line 248
    :goto_3
    :try_start_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    .line 250
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 251
    .line 252
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 257
    .line 258
    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    if-ne v1, v2, :cond_e

    .line 263
    .line 264
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 265
    .line 266
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 267
    .line 268
    .line 269
    :cond_e
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 270
    .line 271
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-ne v1, v0, :cond_f

    .line 276
    .line 277
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 278
    .line 279
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 280
    .line 281
    .line 282
    :cond_f
    return-object p1

    .line 283
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 284
    .line 285
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 290
    .line 291
    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    if-ne v1, v2, :cond_10

    .line 296
    .line 297
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 298
    .line 299
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestDispatchedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 300
    .line 301
    .line 302
    :cond_10
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 303
    .line 304
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$getNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lkotlin/Pair;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-ne v1, v0, :cond_11

    .line 309
    .line 310
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 311
    .line 312
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->access$setNewestReceivedRequest$p(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lkotlin/Pair;)V

    .line 313
    .line 314
    .line 315
    :cond_11
    throw p1
.end method
