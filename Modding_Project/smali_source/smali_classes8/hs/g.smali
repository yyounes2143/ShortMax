.class public final Lhs/g;
.super Ljava/lang/Object;
.source "BufferUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,123:1\n36#2:124\n74#3:125\n69#3:149\n1#4:126\n762#5,7:127\n769#5,6:139\n777#5:147\n372#6,5:134\n377#6,2:145\n355#6:148\n372#6,7:150\n390#6,7:157\n*S KotlinDebug\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n*L\n12#1:124\n44#1:125\n87#1:149\n73#1:127,7\n73#1:139,6\n73#1:147\n73#1:134,5\n73#1:145,2\n86#1:148\n99#1:150,7\n115#1:157,7\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lhs/a;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p0    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dst"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lhs/a;->h()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v2, v1

    .line 24
    if-lt v2, p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, p2

    .line 35
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Lfs/d;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lhs/a;->c(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "Not enough bytes to read a "

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "buffer content"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, " of size "

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 p2, 0x2e

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
