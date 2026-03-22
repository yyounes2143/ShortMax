.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2"
    f = "Draggable.kt"
    l = {
        0xed,
        0xef,
        0xf1,
        0xfb,
        0xfd,
        0x101
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $channel:Ljt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dragLogic$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljt/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljt/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Ljt/d;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

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
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Ljt/d;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;-><init>(Ljt/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lgt/g0;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :pswitch_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lgt/g0;

    .line 31
    .line 32
    :goto_0
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :pswitch_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lgt/g0;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Lgt/g0;

    .line 49
    .line 50
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :catch_0
    move-object v1, v3

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :pswitch_4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lgt/g0;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :pswitch_5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Lgt/g0;

    .line 81
    .line 82
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_6
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Lgt/g0;

    .line 92
    .line 93
    :goto_1
    invoke-static {p1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    .line 101
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Ljt/d;

    .line 105
    .line 106
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    iput v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 114
    .line 115
    invoke-interface {v3, p0}, Ljt/i;->w(Lrs/c;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-ne v3, v0, :cond_0

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_0
    move-object v4, p1

    .line 123
    move-object p1, v3

    .line 124
    move-object v3, v1

    .line 125
    :goto_2
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 126
    .line 127
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    instance-of p1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 134
    .line 135
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->access$invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 142
    .line 143
    iput-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 148
    .line 149
    const/4 v5, 0x2

    .line 150
    iput v5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 151
    .line 152
    invoke-virtual {p1, v4, v1, p0}, Landroidx/compose/foundation/gestures/DragLogic;->processDragStart(Lgt/g0;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_1

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_1
    move-object v1, v3

    .line 160
    move-object v3, v4

    .line 161
    :goto_3
    :try_start_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 162
    .line 163
    sget-object v4, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 164
    .line 165
    new-instance v5, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;

    .line 166
    .line 167
    iget-object v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Ljt/d;

    .line 168
    .line 169
    invoke-direct {v5, v1, v6, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljt/d;Lrs/c;)V

    .line 170
    .line 171
    .line 172
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 175
    .line 176
    const/4 v6, 0x3

    .line 177
    iput v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 178
    .line 179
    invoke-interface {p1, v4, v5, p0}, Landroidx/compose/foundation/gestures/PointerAwareDraggableState;->drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-ne p1, v0, :cond_2

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_2
    :goto_4
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 187
    .line 188
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->access$invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 193
    .line 194
    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 195
    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 199
    .line 200
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 203
    .line 204
    const/4 v4, 0x4

    .line 205
    iput v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 206
    .line 207
    invoke-virtual {p1, v3, v1, p0}, Landroidx/compose/foundation/gestures/DragLogic;->processDragStop(Lgt/g0;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lrs/c;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-ne p1, v0, :cond_3

    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_3
    move-object v1, v3

    .line 215
    :cond_4
    :goto_5
    move-object p1, v1

    .line 216
    goto :goto_1

    .line 217
    :cond_5
    instance-of v1, v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 218
    .line 219
    if-eqz v1, :cond_6

    .line 220
    .line 221
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 224
    .line 225
    const/4 v1, 0x5

    .line 226
    iput v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 227
    .line 228
    invoke-virtual {p1, v3, p0}, Landroidx/compose/foundation/gestures/DragLogic;->processDragCancel(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    if-ne p1, v0, :cond_3

    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_6
    move-object p1, v3

    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :catch_1
    :goto_6
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 239
    .line 240
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->access$invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 247
    .line 248
    const/4 v3, 0x6

    .line 249
    iput v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 250
    .line 251
    invoke-virtual {p1, v1, p0}, Landroidx/compose/foundation/gestures/DragLogic;->processDragCancel(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-ne p1, v0, :cond_4

    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_7
    move-object p1, v4

    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 262
    .line 263
    return-object p1

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
