.class public abstract Lhs/l;
.super Ljava/lang/Object;
.source "Input.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhs/l$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 8 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 9 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n1#1,932:1\n77#1:933\n77#1:935\n77#1:938\n77#1:940\n77#1:941\n77#1:943\n77#1:950\n77#1:1124\n1#2:934\n15#3:936\n26#3:947\n26#3:949\n26#3:968\n26#3:1017\n69#4:937\n69#4:939\n69#4:942\n69#4:944\n74#4:945\n74#4:951\n69#4:952\n69#4:1000\n59#4:1093\n69#4:1109\n69#4:1110\n69#4:1111\n69#4:1114\n69#4:1115\n59#4:1116\n69#4:1117\n69#4:1118\n59#4:1119\n69#4:1121\n74#4:1122\n69#4:1126\n69#4:1127\n69#4:1128\n84#5:946\n84#5:948\n84#5:967\n84#5:1016\n823#6,6:953\n829#6,13:979\n852#6,8:992\n862#6,3:1001\n866#6,11:1082\n877#6,15:1094\n9#7:959\n10#7,2:965\n12#7,7:969\n21#7:978\n123#7,5:1004\n128#7,2:1014\n130#7,61:1018\n193#7:1081\n372#8,5:960\n377#8,2:976\n372#8,5:1009\n377#8,2:1079\n355#8:1120\n355#8:1123\n355#8:1125\n261#9,2:1112\n*S KotlinDebug\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n*L\n25#1:933\n81#1:935\n150#1:938\n177#1:940\n187#1:941\n253#1:943\n330#1:950\n732#1:1124\n119#1:936\n286#1:947\n295#1:949\n439#1:968\n480#1:1017\n122#1:937\n159#1:939\n240#1:942\n262#1:944\n264#1:945\n342#1:951\n342#1:952\n479#1:1000\n479#1:1093\n505#1:1109\n524#1:1110\n537#1:1111\n542#1:1114\n567#1:1115\n568#1:1116\n582#1:1117\n596#1:1118\n597#1:1119\n648#1:1121\n664#1:1122\n757#1:1126\n768#1:1127\n776#1:1128\n286#1:946\n295#1:948\n439#1:967\n480#1:1016\n438#1:953,6\n438#1:979,13\n479#1:992,8\n479#1:1001,3\n479#1:1082,11\n479#1:1094,15\n439#1:959\n439#1:965,2\n439#1:969,7\n439#1:978\n480#1:1004,5\n480#1:1014,2\n480#1:1018,61\n480#1:1081\n439#1:960,5\n439#1:976,2\n480#1:1009,5\n480#1:1079,2\n646#1:1120\n669#1:1123\n748#1:1125\n539#1:1112,2\n*E\n"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final h:Lhs/l$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lis/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhs/l$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhs/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhs/l;->h:Lhs/l$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lhs/l;-><init>(Lis/a;JLio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lis/a;JLio/ktor/utils/io/pool/b;)V
    .locals 2
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "J",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 4
    iput-object p1, p0, Lhs/l;->b:Lis/a;

    .line 5
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, Lhs/l;->c:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Lhs/a;->h()I

    move-result p4

    iput p4, p0, Lhs/l;->d:I

    .line 7
    invoke-virtual {p1}, Lhs/a;->j()I

    move-result p1

    iput p1, p0, Lhs/l;->e:I

    .line 8
    iget p4, p0, Lhs/l;->d:I

    sub-int/2addr p1, p4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lhs/l;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lis/a;JLio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 9
    sget-object p1, Lis/a;->j:Lis/a$d;

    invoke-virtual {p1}, Lis/a$d;->a()Lis/a;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 10
    invoke-static {p1}, Lhs/h;->c(Lis/a;)J

    move-result-wide p2

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 11
    sget-object p4, Lis/a;->j:Lis/a$d;

    invoke-virtual {p4}, Lis/a$d;->c()Lio/ktor/utils/io/pool/b;

    move-result-object p4

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lhs/l;-><init>(Lis/a;JLio/ktor/utils/io/pool/b;)V

    return-void
.end method

.method private final F(Lis/a;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lis/a;

    .line 8
    .line 9
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 10
    .line 11
    invoke-interface {v1}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lis/a;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lhs/a;->o(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lhs/a;->o(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lis/a;->C(Lis/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lis/a;->w()Lis/a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lis/a;->C(Lis/a;)V

    .line 33
    .line 34
    .line 35
    sub-int/2addr p2, p3

    .line 36
    invoke-static {v0, p1, p2}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p1, p3}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lhs/l;->t0(Lis/a;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lhs/h;->c(Lis/a;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    invoke-virtual {p0, p1, p2}, Lhs/l;->s0(J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final a(Lis/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lhs/l;->n0(Lis/a;)Lis/a;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final c(Lis/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhs/l;->b:Lis/a;

    .line 2
    .line 3
    invoke-static {v0}, Lhs/h;->a(Lis/a;)Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 8
    .line 9
    invoke-virtual {v1}, Lis/a$d;->a()Lis/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lhs/l;->t0(Lis/a;)V

    .line 16
    .line 17
    .line 18
    iget-wide v0, p0, Lhs/l;->f:J

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lis/a;->x()Lis/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lhs/h;->c(Lis/a;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :cond_0
    invoke-virtual {p0, v2, v3}, Lhs/l;->s0(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "It should be no tail remaining bytes if current tail is EmptyBuffer"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-virtual {v0, p1}, Lis/a;->C(Lis/a;)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lhs/l;->f:J

    .line 52
    .line 53
    invoke-static {p1}, Lhs/h;->c(Lis/a;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    add-long/2addr v0, v2

    .line 58
    invoke-virtual {p0, v0, v1}, Lhs/l;->s0(J)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method private final c0(II)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "min should be less or equal to max but min = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", max = "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private final d(I)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/EOFException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "at least "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " characters required but no bytes available"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method private final d0(I)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "minSize of "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " is too big (should be less than 8)"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method private final e0(II)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Premature end of stream: expected at least "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " chars but had only "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private final h0(ILis/a;)Lis/a;
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p0}, Lhs/l;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/l;->Y()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    invoke-virtual {p2}, Lis/a;->x()Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lhs/l;->q()Lis/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    if-nez v0, :cond_3

    .line 28
    .line 29
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eq p2, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lhs/l;->n0(Lis/a;)Lis/a;

    .line 38
    .line 39
    .line 40
    :cond_2
    move-object p2, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sub-int v0, p1, v0

    .line 43
    .line 44
    invoke-static {p2, v1, v0}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p2}, Lhs/a;->j()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, p0, Lhs/l;->e:I

    .line 53
    .line 54
    iget-wide v3, p0, Lhs/l;->f:J

    .line 55
    .line 56
    int-to-long v5, v0

    .line 57
    sub-long/2addr v3, v5

    .line 58
    invoke-virtual {p0, v3, v4}, Lhs/l;->s0(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v1}, Lhs/a;->h()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-le v3, v4, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lhs/a;->p(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p2, v2}, Lis/a;->C(Lis/a;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lis/a;->w()Lis/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p2, v0}, Lis/a;->C(Lis/a;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p2}, Lhs/a;->j()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p2}, Lhs/a;->h()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    sub-int/2addr v0, v1

    .line 99
    if-lt v0, p1, :cond_5

    .line 100
    .line 101
    return-object p2

    .line 102
    :cond_5
    const/16 v0, 0x8

    .line 103
    .line 104
    if-gt p1, v0, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    invoke-direct {p0, p1}, Lhs/l;->d0(I)Ljava/lang/Void;

    .line 108
    .line 109
    .line 110
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 111
    .line 112
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method private final i0(Ljava/lang/Appendable;II)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lhs/l;->P()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    invoke-direct {p0, p2}, Lhs/l;->d(I)Ljava/lang/Void;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 20
    .line 21
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    if-lt p3, p2, :cond_f

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v1}, Lis/f;->b(Lhs/l;I)Lis/a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    move v3, v0

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_3
    move v3, v0

    .line 38
    move v4, v3

    .line 39
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v2}, Lhs/a;->h()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {v2}, Lhs/a;->j()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    move v8, v6

    .line 52
    :goto_0
    if-ge v8, v7, :cond_8

    .line 53
    .line 54
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    and-int/lit16 v10, v9, 0xff

    .line 59
    .line 60
    const/16 v11, 0x80

    .line 61
    .line 62
    and-int/2addr v9, v11

    .line 63
    if-eq v9, v11, :cond_7

    .line 64
    .line 65
    int-to-char v9, v10

    .line 66
    if-ne v3, p3, :cond_5

    .line 67
    .line 68
    move v9, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    invoke-interface {p1, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    move v9, v1

    .line 76
    :goto_1
    if-nez v9, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    move v0, v1

    .line 84
    goto :goto_7

    .line 85
    :cond_7
    :goto_2
    sub-int/2addr v8, v6

    .line 86
    invoke-virtual {v2, v8}, Lhs/a;->c(I)V

    .line 87
    .line 88
    .line 89
    move v5, v0

    .line 90
    goto :goto_3

    .line 91
    :cond_8
    sub-int/2addr v7, v6

    .line 92
    invoke-virtual {v2, v7}, Lhs/a;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    move v5, v1

    .line 96
    :goto_3
    if-eqz v5, :cond_9

    .line 97
    .line 98
    move v5, v1

    .line 99
    goto :goto_4

    .line 100
    :cond_9
    if-ne v3, p3, :cond_a

    .line 101
    .line 102
    move v5, v0

    .line 103
    goto :goto_4

    .line 104
    :cond_a
    move v5, v0

    .line 105
    move v4, v1

    .line 106
    :goto_4
    if-nez v5, :cond_b

    .line 107
    .line 108
    invoke-static {p0, v2}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_b
    :try_start_1
    invoke-static {p0, v2}, Lis/f;->c(Lhs/l;Lis/a;)Lis/a;

    .line 113
    .line 114
    .line 115
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    :goto_5
    move v0, v4

    .line 119
    :goto_6
    if-eqz v0, :cond_c

    .line 120
    .line 121
    sub-int/2addr p2, v3

    .line 122
    sub-int/2addr p3, v3

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lhs/l;->m0(Ljava/lang/Appendable;II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    add-int/2addr v3, p1

    .line 128
    return v3

    .line 129
    :cond_c
    if-lt v3, p2, :cond_d

    .line 130
    .line 131
    return v3

    .line 132
    :cond_d
    invoke-direct {p0, p2, v3}, Lhs/l;->e0(II)Ljava/lang/Void;

    .line 133
    .line 134
    .line 135
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 136
    .line 137
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    :goto_7
    if-eqz v0, :cond_e

    .line 143
    .line 144
    invoke-static {p0, v2}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 145
    .line 146
    .line 147
    :cond_e
    throw p1

    .line 148
    :cond_f
    invoke-direct {p0, p2, p3}, Lhs/l;->c0(II)Ljava/lang/Void;

    .line 149
    .line 150
    .line 151
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 152
    .line 153
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method public static synthetic l0(Lhs/l;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const p2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lhs/l;->j0(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: readText"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private final m0(Ljava/lang/Appendable;II)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-static {v1, v4}, Lis/f;->b(Lhs/l;I)Lis/a;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    goto/16 :goto_11

    .line 18
    .line 19
    :cond_0
    move v7, v4

    .line 20
    const/4 v8, 0x0

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lhs/a;->j()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    invoke-virtual {v5}, Lhs/a;->h()I

    .line 26
    .line 27
    .line 28
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    sub-int/2addr v9, v10

    .line 30
    if-lt v9, v7, :cond_13

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v5}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v5}, Lhs/a;->h()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v5}, Lhs/a;->j()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    move v11, v9

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    :goto_0
    if-ge v11, v10, :cond_10

    .line 49
    .line 50
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 51
    .line 52
    .line 53
    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    and-int/lit16 v6, v15, 0xff

    .line 55
    .line 56
    and-int/lit16 v4, v15, 0x80

    .line 57
    .line 58
    const/16 v16, -0x1

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    if-nez v12, :cond_4

    .line 63
    .line 64
    int-to-char v4, v6

    .line 65
    if-ne v8, v3, :cond_2

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :try_start_2
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    :goto_1
    if-nez v4, :cond_3

    .line 76
    .line 77
    sub-int/2addr v11, v9

    .line 78
    invoke-virtual {v5, v11}, Lhs/a;->c(I)V

    .line 79
    .line 80
    .line 81
    :goto_2
    const/4 v4, 0x1

    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :catchall_0
    move-exception v0

    .line 85
    const/4 v4, 0x1

    .line 86
    goto/16 :goto_c

    .line 87
    .line 88
    :cond_3
    :goto_3
    const/4 v4, 0x1

    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_4
    invoke-static {v12}, Lis/e;->i(I)Ljava/lang/Void;

    .line 92
    .line 93
    .line 94
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 95
    .line 96
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_5
    if-nez v12, :cond_8

    .line 101
    .line 102
    const/16 v4, 0x80

    .line 103
    .line 104
    move v13, v6

    .line 105
    const/4 v6, 0x1

    .line 106
    :goto_4
    const/4 v14, 0x7

    .line 107
    if-ge v6, v14, :cond_6

    .line 108
    .line 109
    and-int v14, v13, v4

    .line 110
    .line 111
    if-eqz v14, :cond_6

    .line 112
    .line 113
    not-int v14, v4

    .line 114
    and-int/2addr v13, v14

    .line 115
    shr-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    add-int/lit8 v12, v12, 0x1

    .line 118
    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    add-int/lit8 v4, v12, -0x1

    .line 123
    .line 124
    sub-int v6, v10, v11

    .line 125
    .line 126
    if-le v12, v6, :cond_7

    .line 127
    .line 128
    sub-int/2addr v11, v9

    .line 129
    invoke-virtual {v5, v11}, Lhs/a;->c(I)V

    .line 130
    .line 131
    .line 132
    move/from16 v16, v12

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    move v14, v12

    .line 136
    move v12, v4

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    shl-int/lit8 v4, v13, 0x6

    .line 139
    .line 140
    and-int/lit8 v6, v15, 0x7f

    .line 141
    .line 142
    or-int v13, v4, v6

    .line 143
    .line 144
    add-int/lit8 v12, v12, -0x1

    .line 145
    .line 146
    if-nez v12, :cond_3

    .line 147
    .line 148
    invoke-static {v13}, Lis/e;->f(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_a

    .line 153
    .line 154
    int-to-char v4, v13

    .line 155
    if-ne v8, v3, :cond_9

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 160
    .line 161
    .line 162
    add-int/lit8 v8, v8, 0x1

    .line 163
    .line 164
    const/4 v4, 0x1

    .line 165
    :goto_5
    if-nez v4, :cond_d

    .line 166
    .line 167
    sub-int/2addr v11, v9

    .line 168
    sub-int/2addr v11, v14

    .line 169
    const/4 v4, 0x1

    .line 170
    add-int/2addr v11, v4

    .line 171
    invoke-virtual {v5, v11}, Lhs/a;->c(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    invoke-static {v13}, Lis/e;->g(I)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_f

    .line 180
    .line 181
    invoke-static {v13}, Lis/e;->e(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    int-to-char v4, v4

    .line 186
    if-ne v8, v3, :cond_b

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    goto :goto_6

    .line 190
    :cond_b
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 191
    .line 192
    .line 193
    add-int/lit8 v8, v8, 0x1

    .line 194
    .line 195
    const/4 v4, 0x1

    .line 196
    :goto_6
    if-eqz v4, :cond_e

    .line 197
    .line 198
    invoke-static {v13}, Lis/e;->h(I)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    int-to-char v4, v4

    .line 203
    if-ne v8, v3, :cond_c

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    goto :goto_7

    .line 207
    :cond_c
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .line 209
    .line 210
    add-int/lit8 v8, v8, 0x1

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    :goto_7
    if-nez v4, :cond_d

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_d
    const/4 v4, 0x1

    .line 217
    const/4 v13, 0x0

    .line 218
    goto :goto_9

    .line 219
    :cond_e
    :goto_8
    sub-int/2addr v11, v9

    .line 220
    sub-int/2addr v11, v14

    .line 221
    const/4 v4, 0x1

    .line 222
    add-int/2addr v11, v4

    .line 223
    :try_start_3
    invoke-virtual {v5, v11}, Lhs/a;->c(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_a

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    goto :goto_c

    .line 229
    :cond_f
    const/4 v4, 0x1

    .line 230
    invoke-static {v13}, Lis/e;->j(I)Ljava/lang/Void;

    .line 231
    .line 232
    .line 233
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 234
    .line 235
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_10
    sub-int/2addr v10, v9

    .line 244
    invoke-virtual {v5, v10}, Lhs/a;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .line 246
    .line 247
    const/16 v16, 0x0

    .line 248
    .line 249
    :goto_a
    if-nez v16, :cond_11

    .line 250
    .line 251
    move v7, v4

    .line 252
    goto :goto_b

    .line 253
    :cond_11
    if-lez v16, :cond_12

    .line 254
    .line 255
    move/from16 v7, v16

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_12
    const/4 v7, 0x0

    .line 259
    :goto_b
    :try_start_4
    invoke-virtual {v5}, Lhs/a;->j()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-virtual {v5}, Lhs/a;->h()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    sub-int v9, v6, v9

    .line 268
    .line 269
    goto :goto_d

    .line 270
    :catchall_2
    move-exception v0

    .line 271
    goto :goto_12

    .line 272
    :goto_c
    invoke-virtual {v5}, Lhs/a;->j()I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Lhs/a;->h()I

    .line 276
    .line 277
    .line 278
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 279
    :cond_13
    :goto_d
    if-nez v9, :cond_14

    .line 280
    .line 281
    :try_start_5
    invoke-static {v1, v5}, Lis/f;->c(Lhs/l;Lis/a;)Lis/a;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    goto :goto_f

    .line 286
    :catchall_3
    move-exception v0

    .line 287
    const/4 v4, 0x0

    .line 288
    goto :goto_12

    .line 289
    :cond_14
    if-lt v9, v7, :cond_16

    .line 290
    .line 291
    invoke-virtual {v5}, Lhs/a;->e()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-virtual {v5}, Lhs/a;->f()I

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    sub-int/2addr v6, v9

    .line 300
    const/16 v9, 0x8

    .line 301
    .line 302
    if-ge v6, v9, :cond_15

    .line 303
    .line 304
    goto :goto_e

    .line 305
    :cond_15
    move-object v6, v5

    .line 306
    goto :goto_f

    .line 307
    :cond_16
    :goto_e
    invoke-static {v1, v5}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v7}, Lis/f;->b(Lhs/l;I)Lis/a;

    .line 311
    .line 312
    .line 313
    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 314
    :goto_f
    if-nez v6, :cond_17

    .line 315
    .line 316
    const/4 v4, 0x0

    .line 317
    goto :goto_10

    .line 318
    :cond_17
    move-object v5, v6

    .line 319
    if-gtz v7, :cond_1

    .line 320
    .line 321
    :goto_10
    if-eqz v4, :cond_18

    .line 322
    .line 323
    invoke-static {v1, v5}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 324
    .line 325
    .line 326
    :cond_18
    move v6, v8

    .line 327
    :goto_11
    if-lt v6, v2, :cond_19

    .line 328
    .line 329
    return v6

    .line 330
    :cond_19
    invoke-direct {v1, v2, v6}, Lhs/l;->e0(II)Ljava/lang/Void;

    .line 331
    .line 332
    .line 333
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 334
    .line 335
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 336
    .line 337
    .line 338
    throw v0

    .line 339
    :goto_12
    if-eqz v4, :cond_1a

    .line 340
    .line 341
    invoke-static {v1, v5}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 342
    .line 343
    .line 344
    :cond_1a
    throw v0
.end method

.method private final o(II)I
    .locals 3

    .line 1
    :goto_0
    if-nez p1, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lhs/l;->f0(I)Lis/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return p2

    .line 12
    :cond_1
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lhs/a;->c(I)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lhs/l;->d:I

    .line 29
    .line 30
    add-int/2addr v2, v1

    .line 31
    iput v2, p0, Lhs/l;->d:I

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lhs/l;->a(Lis/a;)V

    .line 34
    .line 35
    .line 36
    sub-int/2addr p1, v1

    .line 37
    add-int/2addr p2, v1

    .line 38
    goto :goto_0
.end method

.method private final q()Lis/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lhs/l;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lhs/l;->u()Lis/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lhs/l;->g:Z

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Lhs/l;->c(Lis/a;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private final s(Lis/a;Lis/a;)Lis/a;
    .locals 3

    .line 1
    :goto_0
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lhs/l;->q()Lis/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lis/a;->w()Lis/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p2}, Lhs/l;->t0(Lis/a;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lhs/l;->s0(J)V

    .line 25
    .line 26
    .line 27
    move-object p1, p2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-le p1, v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lhs/l;->t0(Lis/a;)V

    .line 40
    .line 41
    .line 42
    iget-wide p1, p0, Lhs/l;->f:J

    .line 43
    .line 44
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    sub-int/2addr v1, v2

    .line 53
    int-to-long v1, v1

    .line 54
    sub-long/2addr p1, v1

    .line 55
    invoke-virtual {p0, p1, p2}, Lhs/l;->s0(J)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    move-object p1, v0

    .line 60
    goto :goto_0
.end method

.method private final t0(Lis/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lhs/l;->b:Lis/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lhs/l;->c:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lhs/l;->d:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lhs/l;->e:I

    .line 20
    .line 21
    return-void
.end method

.method private final x(Lis/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lhs/l;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lis/a;->x()Lis/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lhs/l;->d:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lhs/l;->e:I

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lhs/l;->s0(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr v0, v1

    .line 38
    invoke-virtual {p1}, Lhs/a;->e()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr v1, v2

    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    rsub-int/lit8 v1, v1, 0x8

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-le v0, v1, :cond_1

    .line 56
    .line 57
    invoke-direct {p0, p1, v0, v1}, Lhs/l;->F(Lis/a;II)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 62
    .line 63
    invoke-interface {v1}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lis/a;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lhs/a;->o(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lis/a;->w()Lis/a;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lis/a;->C(Lis/a;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, p1, v0}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v1}, Lhs/l;->t0(Lis/a;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final P()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lhs/l;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/l;->Y()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Lhs/l;->f:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p0, Lhs/l;->g:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lhs/l;->q()Lis/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final R()Lis/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/l;->b:Lis/a;

    .line 2
    .line 3
    iget v1, p0, Lhs/l;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lhs/a;->d(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final T()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/l;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final W()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/l;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()I
    .locals 1

    .line 1
    iget v0, p0, Lhs/l;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final Z()Lio/ktor/utils/io/pool/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lhs/l;->T()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lhs/l;->Y()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    int-to-long v0, v0

    .line 11
    iget-wide v2, p0, Lhs/l;->f:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final b(Lis/a;)V
    .locals 5
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p1}, Lhs/h;->c(Lis/a;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p0, Lhs/l;->b:Lis/a;

    .line 20
    .line 21
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-ne v3, v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lhs/l;->t0(Lis/a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lhs/l;->T()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Lhs/l;->Y()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr p1, v0

    .line 39
    int-to-long v3, p1

    .line 40
    sub-long/2addr v1, v3

    .line 41
    invoke-virtual {p0, v1, v2}, Lhs/l;->s0(J)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lhs/l;->b:Lis/a;

    .line 46
    .line 47
    invoke-static {v0}, Lhs/h;->a(Lis/a;)Lis/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lis/a;->C(Lis/a;)V

    .line 52
    .line 53
    .line 54
    iget-wide v3, p0, Lhs/l;->f:J

    .line 55
    .line 56
    add-long/2addr v3, v1

    .line 57
    invoke-virtual {p0, v3, v4}, Lhs/l;->s0(J)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method protected final b0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhs/l;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lhs/l;->g:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhs/l;->release()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lhs/l;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lhs/l;->g:Z

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lhs/l;->l()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f0(I)Lis/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lhs/l;->e:I

    .line 6
    .line 7
    iget v2, p0, Lhs/l;->d:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    if-lt v1, p1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0, p1, v0}, Lhs/l;->h0(ILis/a;)Lis/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final g0(I)Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lhs/l;->h0(ILis/a;)Lis/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final j0(II)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lhs/l;->P()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string p1, ""

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lhs/l;->a0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-lez v2, :cond_2

    .line 23
    .line 24
    int-to-long v2, p2

    .line 25
    cmp-long v2, v2, v0

    .line 26
    .line 27
    if-ltz v2, :cond_2

    .line 28
    .line 29
    long-to-int p1, v0

    .line 30
    const/4 p2, 0x2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0, p2, v0}, Lhs/q;->g(Lhs/l;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    const/16 v0, 0x10

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/ranges/e;->e(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0, p2}, Lkotlin/ranges/e;->j(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1, p1, p2}, Lhs/l;->i0(Ljava/lang/Appendable;II)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "StringBuilder(capacity).\u2026builderAction).toString()"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method

.method public final k()Z
    .locals 4

    .line 1
    iget v0, p0, Lhs/l;->d:I

    .line 2
    .line 3
    iget v1, p0, Lhs/l;->e:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lhs/l;->f:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method protected abstract l()V
.end method

.method public final m(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lhs/l;->o(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Negative discard is not allowed: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final n0(Lis/a;)Lis/a;
    .locals 5
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "head"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lis/a;->w()Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 13
    .line 14
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-direct {p0, v0}, Lhs/l;->t0(Lis/a;)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lhs/l;->f:J

    .line 22
    .line 23
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr v3, v4

    .line 32
    int-to-long v3, v3

    .line 33
    sub-long/2addr v1, v3

    .line 34
    invoke-virtual {p0, v1, v2}, Lhs/l;->s0(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final o0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhs/l;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final p(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lhs/l;->m(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Unable to discard "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " bytes due to end of packet"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final r(Lis/a;)Lis/a;
    .locals 1
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lis/a;->j:Lis/a$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lis/a$d;->a()Lis/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p1, v0}, Lhs/l;->s(Lis/a;Lis/a;)Lis/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final release()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 6
    .line 7
    invoke-virtual {v1}, Lis/a$d;->a()Lis/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lhs/l;->t0(Lis/a;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    invoke-virtual {p0, v1, v2}, Lhs/l;->s0(J)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lhs/h;->b(Lis/a;Lio/ktor/utils/io/pool/b;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final s0(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lhs/l;->f:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "tailRemaining shouldn\'t be negative: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public final t(Lis/a;)Lis/a;
    .locals 1
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lhs/l;->r(Lis/a;)Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method protected u()Lis/a;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lis/a;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Lhs/a;->o(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lhs/a;->g()Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0}, Lhs/a;->f()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sub-int/2addr v3, v4

    .line 31
    invoke-virtual {p0, v1, v2, v3}, Lhs/l;->v(Ljava/nio/ByteBuffer;II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lhs/l;->g:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-le v2, v3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    return-object v0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lhs/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :goto_1
    iget-object v2, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method protected abstract v(Ljava/nio/ByteBuffer;II)I
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final w(Lis/a;)V
    .locals 5
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lis/a;->x()Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lhs/l;->x(Lis/a;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v1, v2

    .line 25
    invoke-virtual {p1}, Lhs/a;->e()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v2, v3

    .line 34
    rsub-int/lit8 v2, v2, 0x8

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0}, Lhs/a;->i()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ge v3, v2, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lhs/l;->x(Lis/a;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {v0, v2}, Lhs/d;->f(Lhs/a;I)V

    .line 51
    .line 52
    .line 53
    if-le v1, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lhs/a;->l()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lhs/l;->e:I

    .line 63
    .line 64
    iget-wide v0, p0, Lhs/l;->f:J

    .line 65
    .line 66
    int-to-long v2, v2

    .line 67
    add-long/2addr v0, v2

    .line 68
    invoke-virtual {p0, v0, v1}, Lhs/l;->s0(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0, v0}, Lhs/l;->t0(Lis/a;)V

    .line 73
    .line 74
    .line 75
    iget-wide v3, p0, Lhs/l;->f:J

    .line 76
    .line 77
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0}, Lhs/a;->h()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sub-int/2addr v1, v0

    .line 86
    sub-int/2addr v1, v2

    .line 87
    int-to-long v0, v1

    .line 88
    sub-long/2addr v3, v0

    .line 89
    invoke-virtual {p0, v3, v4}, Lhs/l;->s0(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lis/a;->w()Lis/a;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lhs/l;->a:Lio/ktor/utils/io/pool/b;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final w0()Lis/a;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lis/a;->x()Lis/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lis/a;->j:Lis/a$d;

    .line 10
    .line 11
    invoke-virtual {v2}, Lis/a$d;->a()Lis/a;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v2}, Lhs/l;->t0(Lis/a;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Lhs/l;->s0(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0, v1}, Lhs/l;->t0(Lis/a;)V

    .line 31
    .line 32
    .line 33
    iget-wide v4, p0, Lhs/l;->f:J

    .line 34
    .line 35
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1}, Lhs/a;->h()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v2, v1

    .line 44
    int-to-long v1, v2

    .line 45
    sub-long/2addr v4, v1

    .line 46
    invoke-virtual {p0, v4, v5}, Lhs/l;->s0(J)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, v3}, Lis/a;->C(Lis/a;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final y0()Lis/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lis/a;->j:Lis/a$d;

    .line 6
    .line 7
    invoke-virtual {v1}, Lis/a$d;->a()Lis/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-direct {p0, v1}, Lhs/l;->t0(Lis/a;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2}, Lhs/l;->s0(J)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final z0(Lis/a;)Z
    .locals 4
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lhs/h;->a(Lis/a;)Lis/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lhs/a;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v2, v3

    .line 34
    if-ge v2, v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v0, p1, v1}, Lhs/b;->a(Lhs/a;Lhs/a;I)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lhs/l;->R()Lis/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lhs/a;->j()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lhs/l;->e:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-wide v2, p0, Lhs/l;->f:J

    .line 54
    .line 55
    int-to-long v0, v1

    .line 56
    add-long/2addr v2, v0

    .line 57
    invoke-virtual {p0, v2, v3}, Lhs/l;->s0(J)V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x1

    .line 61
    return p1

    .line 62
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 63
    return p1
.end method
