.class public final Lis/c;
.super Ljava/lang/Object;
.source "EncodeResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEncodeResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n+ 2 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,20:1\n47#2:21\n49#2:22\n*S KotlinDebug\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n*L\n14#1:21\n15#1:22\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(I)S
    .locals 0

    .line 1
    invoke-static {p0}, Lis/c;->f(I)S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(I)S
    .locals 0

    .line 1
    invoke-static {p0}, Lis/c;->e(I)S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static d(SS)I
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    shl-int/lit8 p0, p0, 0x10

    .line 6
    .line 7
    and-int/2addr p1, v0

    .line 8
    or-int/2addr p0, p1

    .line 9
    invoke-static {p0}, Lis/c;->c(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final e(I)S
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-short p0, p0

    .line 6
    invoke-static {p0}, Lms/s;->b(S)S

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final f(I)S
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x10

    .line 2
    .line 3
    int-to-short p0, p0

    .line 4
    invoke-static {p0}, Lms/s;->b(S)S

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
