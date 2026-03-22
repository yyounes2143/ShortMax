.class public Lhs/a;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhs/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n*L\n1#1,472:1\n69#1:475\n69#1:476\n74#1:477\n74#1:478\n74#1:479\n69#1:480\n69#1,6:491\n59#1:497\n21#2:473\n21#2:474\n26#2:483\n26#2:485\n26#2:487\n37#2,2:489\n1#3:481\n84#4:482\n84#4:484\n84#4:486\n99#4:488\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n86#1:475\n81#1:476\n94#1:477\n106#1:478\n113#1:479\n122#1:480\n333#1:491,6\n333#1:497\n53#1:473\n64#1:474\n277#1:483\n291#1:485\n307#1:487\n319#1:489,2\n277#1:482\n291#1:484\n307#1:486\n319#1:488\n*E\n"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final g:Lhs/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhs/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhs/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhs/a;->g:Lhs/a$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lhs/a;->a:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 5
    iput v0, p0, Lhs/a;->e:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    .line 7
    iput p1, p0, Lhs/a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhs/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget v0, p0, Lhs/a;->c:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lhs/a;->e:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lhs/a;->c:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-static {p1, v0}, Lhs/d;->a(II)Ljava/lang/Void;

    .line 23
    .line 24
    .line 25
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 26
    .line 27
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final b(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lhs/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lhs/a;->c:I

    .line 4
    .line 5
    if-lt p1, v1, :cond_2

    .line 6
    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lhs/a;->c:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    sub-int/2addr p1, v1

    .line 16
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    invoke-static {p1, v0}, Lhs/d;->a(II)Ljava/lang/Void;

    .line 26
    .line 27
    .line 28
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 29
    .line 30
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iput p1, p0, Lhs/a;->c:I

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    sub-int/2addr p1, v1

    .line 39
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v0, v1

    .line 48
    invoke-static {p1, v0}, Lhs/d;->a(II)Ljava/lang/Void;

    .line 49
    .line 50
    .line 51
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 52
    .line 53
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final c(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lhs/a;->b:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lhs/a;->c:I

    .line 10
    .line 11
    if-gt v0, v1, :cond_1

    .line 12
    .line 13
    iput v0, p0, Lhs/a;->b:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Lhs/a;->h()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    invoke-static {p1, v0}, Lhs/d;->b(II)Ljava/lang/Void;

    .line 26
    .line 27
    .line 28
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 29
    .line 30
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final d(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lhs/a;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lhs/a;->b:I

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lhs/a;->b:I

    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    iget v0, p0, Lhs/a;->b:I

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lhs/a;->h()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-static {p1, v0}, Lhs/d;->b(II)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 30
    .line 31
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/a;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()B
    .locals 2

    .line 1
    iget v0, p0, Lhs/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lhs/a;->c:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lhs/a;->b:I

    .line 10
    .line 11
    iget-object v1, p0, Lhs/a;->a:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 19
    .line 20
    const-string v1, "No readable bytes available."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final l()V
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->f:I

    .line 2
    .line 3
    iput v0, p0, Lhs/a;->e:I

    .line 4
    .line 5
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lhs/a;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lhs/a;->l()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lhs/a;->b:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lhs/a;->b:I

    .line 8
    .line 9
    iget v0, p0, Lhs/a;->d:I

    .line 10
    .line 11
    if-le v0, p1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lhs/a;->d:I

    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "newReadPosition shouldn\'t be ahead of the read position: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " > "

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lhs/a;->b:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "newReadPosition shouldn\'t be negative: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public final o(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    iget v0, p0, Lhs/a;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    iget v1, p0, Lhs/a;->c:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lhs/a;->e:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-gez v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0, p1}, Lhs/d;->c(Lhs/a;I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget v1, p0, Lhs/a;->d:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_2

    .line 21
    .line 22
    invoke-static {p0, p1}, Lhs/d;->e(Lhs/a;I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget v1, p0, Lhs/a;->b:I

    .line 26
    .line 27
    iget v2, p0, Lhs/a;->c:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    iput v0, p0, Lhs/a;->e:I

    .line 32
    .line 33
    iput v0, p0, Lhs/a;->b:I

    .line 34
    .line 35
    iput v0, p0, Lhs/a;->c:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-static {p0, p1}, Lhs/d;->d(Lhs/a;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "endGap shouldn\'t be negative: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public final p(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lhs/a;->b:I

    .line 4
    .line 5
    if-lt v0, p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lhs/a;->d:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lhs/a;->c:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget v0, p0, Lhs/a;->e:I

    .line 15
    .line 16
    if-gt p1, v0, :cond_1

    .line 17
    .line 18
    iput p1, p0, Lhs/a;->c:I

    .line 19
    .line 20
    iput p1, p0, Lhs/a;->b:I

    .line 21
    .line 22
    iput p1, p0, Lhs/a;->d:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p0, p1}, Lhs/d;->h(Lhs/a;I)Ljava/lang/Void;

    .line 26
    .line 27
    .line 28
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 29
    .line 30
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    invoke-static {p0, p1}, Lhs/d;->g(Lhs/a;I)Ljava/lang/Void;

    .line 35
    .line 36
    .line 37
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 38
    .line 39
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "startGap shouldn\'t be negative: "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lhs/a;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lhs/a;->r()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget v0, p0, Lhs/a;->f:I

    .line 2
    .line 3
    iget v1, p0, Lhs/a;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lhs/a;->s(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iget v0, p0, Lhs/a;->d:I

    .line 2
    .line 3
    iput v0, p0, Lhs/a;->b:I

    .line 4
    .line 5
    iput v0, p0, Lhs/a;->c:I

    .line 6
    .line 7
    iput p1, p0, Lhs/a;->e:I

    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Buffer[0x"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "toString(this, checkRadix(radix))"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "]("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Lhs/a;->h()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr v1, v2

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " used, "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Lhs/a;->j()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sub-int/2addr v1, v2

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " free, "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lhs/a;->d:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lhs/a;->e()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p0}, Lhs/a;->f()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    sub-int/2addr v2, v3

    .line 83
    add-int/2addr v1, v2

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " reserved of "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lhs/a;->f:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x29

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
