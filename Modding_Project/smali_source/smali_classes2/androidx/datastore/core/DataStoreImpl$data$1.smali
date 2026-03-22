.class final Landroidx/datastore/core/DataStoreImpl$data$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DataStoreImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lgt/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkt/c<",
        "-TT;>;",
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
    c = "androidx.datastore.core.DataStoreImpl$data$1"
    f = "DataStoreImpl.kt"
    l = {
        0x48,
        0x4a,
        0x64
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$data$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,538:1\n53#2:539\n55#2:543\n50#3:540\n55#3:542\n107#4:541\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl$data$1\n*L\n108#1:539\n108#1:543\n108#1:540\n108#1:542\n108#1:541\n*E\n"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/datastore/core/DataStoreImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStoreImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/core/DataStoreImpl;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStoreImpl<",
            "TT;>;",
            "Lrs/c<",
            "-",
            "Landroidx/datastore/core/DataStoreImpl$data$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkt/c;
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
            "Lkt/c<",
            "-TT;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStoreImpl$data$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/datastore/core/State;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lkt/c;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lkt/c;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkt/c;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    iput v4, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->label:I

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v1, v4, p0}, Landroidx/datastore/core/DataStoreImpl;->access$readState(Landroidx/datastore/core/DataStoreImpl;ZLrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-ne v1, v0, :cond_4

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    move-object v7, v1

    .line 73
    move-object v1, p1

    .line 74
    move-object p1, v7

    .line 75
    :goto_0
    check-cast p1, Landroidx/datastore/core/State;

    .line 76
    .line 77
    instance-of v4, p1, Landroidx/datastore/core/Data;

    .line 78
    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    move-object v4, p1

    .line 82
    check-cast v4, Landroidx/datastore/core/Data;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/datastore/core/Data;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iput-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v3, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->label:I

    .line 93
    .line 94
    invoke-interface {v1, v4, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-ne v3, v0, :cond_5

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    move-object v3, v1

    .line 102
    move-object v1, p1

    .line 103
    :goto_1
    move-object p1, v1

    .line 104
    move-object v1, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    instance-of v3, p1, Landroidx/datastore/core/UnInitialized;

    .line 107
    .line 108
    if-nez v3, :cond_a

    .line 109
    .line 110
    instance-of v3, p1, Landroidx/datastore/core/ReadException;

    .line 111
    .line 112
    if-nez v3, :cond_9

    .line 113
    .line 114
    instance-of v3, p1, Landroidx/datastore/core/Final;

    .line 115
    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_7
    :goto_2
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 122
    .line 123
    invoke-static {v3}, Landroidx/datastore/core/DataStoreImpl;->access$getInMemoryCache$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroidx/datastore/core/DataStoreInMemoryCache;->getFlow()Lkt/b;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$1;

    .line 132
    .line 133
    iget-object v5, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-direct {v4, v5, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lrs/c;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/c;->P(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$2;

    .line 144
    .line 145
    invoke-direct {v4, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$2;-><init>(Lrs/c;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/c;->V(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 153
    .line 154
    invoke-direct {v4, p1, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Landroidx/datastore/core/State;Lrs/c;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/c;->s(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;

    .line 162
    .line 163
    invoke-direct {v3, p1}, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;-><init>(Lkt/b;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$5;

    .line 167
    .line 168
    iget-object v4, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->this$0:Landroidx/datastore/core/DataStoreImpl;

    .line 169
    .line 170
    invoke-direct {p1, v4, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$5;-><init>(Landroidx/datastore/core/DataStoreImpl;Lrs/c;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v3, p1}, Lkotlinx/coroutines/flow/c;->N(Lkt/b;Lat/n;)Lkt/b;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object v6, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v6, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->L$1:Ljava/lang/Object;

    .line 180
    .line 181
    iput v2, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->label:I

    .line 182
    .line 183
    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/flow/c;->u(Lkt/c;Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-ne p1, v0, :cond_8

    .line 188
    .line 189
    return-object v0

    .line 190
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_9
    check-cast p1, Landroidx/datastore/core/ReadException;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/datastore/core/ReadException;->getReadException()Ljava/lang/Throwable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    throw p1

    .line 200
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 203
    .line 204
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1
.end method
