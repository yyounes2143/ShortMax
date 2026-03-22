.class public final Lhs/k;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "BufferFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Lis/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n15#2:94\n15#2:95\n1#3:96\n*S KotlinDebug\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n*L\n75#1:94\n76#1:95\n*E\n"
    }
.end annotation


# instance fields
.field private final h:I

.field private final i:Lfs/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILfs/a;)V
    .locals 1
    .param p3    # Lfs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "allocator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    .line 4
    iput p1, p0, Lhs/k;->h:I

    .line 5
    iput-object p3, p0, Lhs/k;->i:Lfs/a;

    return-void
.end method

.method public synthetic constructor <init>(IILfs/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/16 p2, 0x3e8

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1
    sget-object p3, Lfs/b;->a:Lfs/b;

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lhs/k;-><init>(IILfs/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lis/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhs/k;->r(Lis/a;)Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lis/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhs/k;->s(Lis/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhs/k;->t()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lis/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhs/k;->u(Lis/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lis/a;)Lis/a;
    .locals 1
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lis/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lis/a;->E()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lis/a;->q()V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method protected s(Lis/a;)V
    .locals 2
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhs/k;->i:Lfs/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lfs/a;->a(Ljava/nio/ByteBuffer;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->d(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lis/a;->D()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected t()Lis/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lis/a;

    .line 2
    .line 3
    iget-object v1, p0, Lhs/k;->i:Lfs/a;

    .line 4
    .line 5
    iget v2, p0, Lhs/k;->h:I

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lfs/a;->b(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2, p0, v2}, Lis/a;-><init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method protected u(Lis/a;)V
    .locals 4
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->q(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    iget v2, p0, Lhs/k;->h:I

    .line 19
    .line 20
    int-to-long v2, v2

    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 26
    .line 27
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eq p1, v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Lhs/a;->g:Lhs/a$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lhs/a$a;->a()Lhs/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eq p1, v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Lis/a;->z()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lis/a;->x()Lis/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lis/a;->y()Lis/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Recycled instance shouldn\'t be a view or another buffer."

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v0, "Recycled instance shouldn\'t be a part of a chain."

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v0, "Unable to clear buffer: it is still in use."

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v0, "Empty instance couldn\'t be recycled"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "ChunkBuffer.Empty couldn\'t be recycled"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "Buffer size mismatch. Expected: "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v1, p0, Lhs/k;->h:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", actual: "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    int-to-long v1, p1

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method
