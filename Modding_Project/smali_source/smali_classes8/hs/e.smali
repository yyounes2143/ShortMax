.class public final Lhs/e;
.super Ljava/lang/Object;
.source "BufferPrimitivesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferPrimitivesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n+ 2 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,27:1\n762#2,7:28\n769#2,6:40\n777#2:48\n784#2,5:49\n789#2,6:59\n796#2:67\n372#3,5:35\n377#3,2:46\n390#3,5:54\n395#3,2:65\n*S KotlinDebug\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n*L\n12#1:28,7\n12#1:40,6\n12#1:48\n23#1:49,5\n23#1:59,6\n23#1:67\n12#1:35,5\n12#1:46,2\n23#1:54,5\n23#1:65,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lhs/a;Ljava/nio/ByteBuffer;)V
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
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v3, v2

    .line 28
    if-lt v3, v0, :cond_0

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Lfs/d;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lhs/a;->a(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Lio/ktor/utils/io/core/InsufficientSpaceException;

    .line 38
    .line 39
    const-string p1, "buffer content"

    .line 40
    .line 41
    invoke-direct {p0, p1, v0, v3}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method
