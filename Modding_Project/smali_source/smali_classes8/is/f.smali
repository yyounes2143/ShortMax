.class public final Lis/f;
.super Ljava/lang/Object;
.source "Unsafe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnsafe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Unsafe.kt\nio/ktor/utils/io/core/internal/UnsafeKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,64:1\n355#2:65\n59#3:66\n*S KotlinDebug\n*F\n+ 1 Unsafe.kt\nio/ktor/utils/io/core/internal/UnsafeKt\n*L\n38#1:65\n39#1:66\n*E\n"
    }
.end annotation


# static fields
.field public static final a:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lis/f;->a:[B

    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lhs/l;Lis/a;)V
    .locals 2
    .param p0    # Lhs/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lis/a;
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
    const-string v0, "current"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-le v0, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lhs/a;->e()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    if-ge v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lhs/l;->w(Lis/a;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lhs/l;->o0(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, p1}, Lhs/l;->r(Lis/a;)Lis/a;

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public static final b(Lhs/l;I)Lis/a;
    .locals 1
    .param p0    # Lhs/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lhs/l;->g0(I)Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Lhs/l;Lis/a;)Lis/a;
    .locals 1
    .param p0    # Lhs/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "current"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lhs/l;->k()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lis/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lhs/l;->t(Lis/a;)Lis/a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final d(Lhs/n;ILis/a;)Lis/a;
    .locals 1
    .param p0    # Lhs/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lhs/n;->k()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lhs/n;->W(I)Lis/a;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final e(Lhs/j;Lhs/i;)I
    .locals 3
    .param p0    # Lhs/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhs/i;
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
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lhs/i;->i0()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lhs/n;->Y()Lis/a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-static {}, Lhs/p;->a()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-gt v0, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lis/a;->x()Lis/a;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lhs/l;->z0(Lis/a;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lhs/n;->d()V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Lhs/l;->b(Lis/a;)V

    .line 46
    .line 47
    .line 48
    return v0
.end method
