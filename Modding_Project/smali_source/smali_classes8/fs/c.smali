.class public final Lfs/c;
.super Ljava/lang/Object;
.source "MemoryJvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,230:1\n6#2,2:231\n6#2,2:233\n6#2,2:235\n6#2,2:237\n6#2,2:239\n6#2,2:241\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n31#1:231,2\n44#1:233,2\n51#1:235,2\n95#1:237,2\n96#1:239,2\n97#1:241,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lfs/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfs/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfs/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfs/c;->a:Lfs/c$a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "allocate(0).order(ByteOrder.BIG_ENDIAN)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lfs/c;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lfs/c;->b:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic a()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    sget-object v0, Lfs/c;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static final c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "destination"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, p2

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/2addr p1, p4

    .line 48
    invoke-static {v0, p0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    add-int/2addr p2, p3

    .line 60
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final d(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lfs/d;->d(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lfs/c;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
