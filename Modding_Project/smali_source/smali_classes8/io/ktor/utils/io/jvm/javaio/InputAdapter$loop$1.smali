.class public final Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
.super Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/r;Lio/ktor/utils/io/ByteReadChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n+ 2 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n1#1,316:1\n275#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n*L\n37#1:317,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic g:Lio/ktor/utils/io/jvm/javaio/InputAdapter;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/r;Lio/ktor/utils/io/jvm/javaio/InputAdapter;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->g:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected h(Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;-><init>(Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 60
    .line 61
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    move-object v2, p0

    .line 74
    :cond_4
    iput p1, v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 75
    .line 76
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->h:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->i:Ljava/lang/Object;

    .line 79
    .line 80
    iput v4, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->l:I

    .line 81
    .line 82
    invoke-static {v2, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->c(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-ne p1, v5, :cond_5

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    if-ne p1, v1, :cond_6

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_6
    :goto_1
    const-string v5, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 99
    .line 100
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, [B

    .line 104
    .line 105
    iget-object v5, v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->g:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 106
    .line 107
    invoke-static {v5}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->a(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lio/ktor/utils/io/ByteReadChannel;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->f()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->e()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->h:Ljava/lang/Object;

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    iput-object v8, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->i:Ljava/lang/Object;

    .line 123
    .line 124
    iput v3, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->l:I

    .line 125
    .line 126
    invoke-interface {v5, p1, v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannel;->e([BIILrs/c;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v1, :cond_7

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    const/4 v5, -0x1

    .line 140
    if-ne p1, v5, :cond_4

    .line 141
    .line 142
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->g:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 143
    .line 144
    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->b(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lgt/s;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Lgt/s;->complete()Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->d(I)V

    .line 152
    .line 153
    .line 154
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1
.end method
