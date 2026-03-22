.class final Lcom/explorestack/protobuf/c1;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/explorestack/protobuf/q1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/q1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/MessageLite;

.field private final b:Lcom/explorestack/protobuf/i2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i2<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/explorestack/protobuf/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/i2;Lcom/explorestack/protobuf/z;Lcom/explorestack/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/i2<",
            "**>;",
            "Lcom/explorestack/protobuf/z<",
            "*>;",
            "Lcom/explorestack/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/z;->e(Lcom/explorestack/protobuf/MessageLite;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/explorestack/protobuf/c1;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 15
    .line 16
    return-void
.end method

.method private d(Lcom/explorestack/protobuf/i2;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/i2<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/i2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/i2;->i(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private e(Lcom/explorestack/protobuf/i2;Lcom/explorestack/protobuf/z;Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/explorestack/protobuf/e0$c<",
            "TET;>;>(",
            "Lcom/explorestack/protobuf/i2<",
            "TUT;TUB;>;",
            "Lcom/explorestack/protobuf/z<",
            "TET;>;TT;",
            "Lcom/explorestack/protobuf/o1;",
            "Lcom/explorestack/protobuf/y;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/i2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/z;->d(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/explorestack/protobuf/o1;->getFieldNumber()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/i2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object v0, p0

    .line 23
    move-object v1, p4

    .line 24
    move-object v2, p5

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, v8

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, v7

    .line 29
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/c1;->g(Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/z;Lcom/explorestack/protobuf/e0;Lcom/explorestack/protobuf/i2;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/i2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    invoke-virtual {p1, p3, v7}, Lcom/explorestack/protobuf/i2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method static f(Lcom/explorestack/protobuf/i2;Lcom/explorestack/protobuf/z;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/i2<",
            "**>;",
            "Lcom/explorestack/protobuf/z<",
            "*>;",
            "Lcom/explorestack/protobuf/MessageLite;",
            ")",
            "Lcom/explorestack/protobuf/c1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/c1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/explorestack/protobuf/c1;-><init>(Lcom/explorestack/protobuf/i2;Lcom/explorestack/protobuf/z;Lcom/explorestack/protobuf/MessageLite;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private g(Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/z;Lcom/explorestack/protobuf/e0;Lcom/explorestack/protobuf/i2;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/explorestack/protobuf/e0$c<",
            "TET;>;>(",
            "Lcom/explorestack/protobuf/o1;",
            "Lcom/explorestack/protobuf/y;",
            "Lcom/explorestack/protobuf/z<",
            "TET;>;",
            "Lcom/explorestack/protobuf/e0<",
            "TET;>;",
            "Lcom/explorestack/protobuf/i2<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/explorestack/protobuf/WireFormat;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p3, p2, v1, v0}, Lcom/explorestack/protobuf/z;->b(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/explorestack/protobuf/z;->h(Lcom/explorestack/protobuf/o1;Ljava/lang/Object;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/e0;)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/explorestack/protobuf/i2;->m(Ljava/lang/Object;Lcom/explorestack/protobuf/o1;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->skipField()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    move v3, v1

    .line 46
    move-object v1, v0

    .line 47
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->getFieldNumber()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const v5, 0x7fffffff

    .line 52
    .line 53
    .line 54
    if-ne v4, v5, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->getTag()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sget v5, Lcom/explorestack/protobuf/WireFormat;->c:I

    .line 62
    .line 63
    if-ne v4, v5, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->readUInt32()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 70
    .line 71
    invoke-virtual {p3, p2, v0, v3}, Lcom/explorestack/protobuf/z;->b(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    sget v5, Lcom/explorestack/protobuf/WireFormat;->d:I

    .line 77
    .line 78
    if-ne v4, v5, :cond_7

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/explorestack/protobuf/z;->h(Lcom/explorestack/protobuf/o1;Ljava/lang/Object;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/e0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->readBytes()Lcom/explorestack/protobuf/ByteString;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_0

    .line 91
    :cond_7
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->skipField()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    :goto_1
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->getTag()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sget v4, Lcom/explorestack/protobuf/WireFormat;->b:I

    .line 102
    .line 103
    if-ne p1, v4, :cond_a

    .line 104
    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/explorestack/protobuf/z;->i(Lcom/explorestack/protobuf/ByteString;Ljava/lang/Object;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/e0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_8
    invoke-virtual {p5, p6, v3, v1}, Lcom/explorestack/protobuf/i2;->d(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    :goto_2
    return v2

    .line 117
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    throw p1
.end method

.method private h(Lcom/explorestack/protobuf/i2;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/i2<",
            "TUT;TUB;>;TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/i2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/i2;->s(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;[BIILcom/explorestack/protobuf/g$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/explorestack/protobuf/g$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->a:Lcom/explorestack/protobuf/k2;

    .line 5
    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/k2;->c()Lcom/explorestack/protobuf/k2;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/explorestack/protobuf/k2;->j()Lcom/explorestack/protobuf/k2;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->a:Lcom/explorestack/protobuf/k2;

    .line 17
    .line 18
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->q()Lcom/explorestack/protobuf/e0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    move-object v2, v0

    .line 26
    :goto_0
    if-ge p3, p4, :cond_b

    .line 27
    .line 28
    invoke-static {p2, p3, p5}, Lcom/explorestack/protobuf/g;->I([BILcom/explorestack/protobuf/g$b;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget p3, p5, Lcom/explorestack/protobuf/g$b;->a:I

    .line 33
    .line 34
    sget v3, Lcom/explorestack/protobuf/WireFormat;->a:I

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    if-eq p3, v3, :cond_3

    .line 38
    .line 39
    invoke-static {p3}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, v5, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 46
    .line 47
    iget-object v3, p5, Lcom/explorestack/protobuf/g$b;->d:Lcom/explorestack/protobuf/y;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 50
    .line 51
    invoke-static {p3}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {v2, v3, v5, v6}, Lcom/explorestack/protobuf/z;->b(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v8, v2

    .line 60
    check-cast v8, Lcom/explorestack/protobuf/GeneratedMessageLite$d;

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {v8}, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->c()Lcom/explorestack/protobuf/MessageLite;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p3, v2}, Lcom/explorestack/protobuf/l1;->d(Ljava/lang/Class;)Lcom/explorestack/protobuf/q1;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-static {p3, p2, v4, p4, p5}, Lcom/explorestack/protobuf/g;->p(Lcom/explorestack/protobuf/q1;[BIILcom/explorestack/protobuf/g$b;)I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    iget-object v2, v8, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 85
    .line 86
    iget-object v3, p5, Lcom/explorestack/protobuf/g$b;->c:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    move-object v2, v8

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v2, p3

    .line 94
    move-object v3, p2

    .line 95
    move v5, p4

    .line 96
    move-object v6, v1

    .line 97
    move-object v7, p5

    .line 98
    invoke-static/range {v2 .. v7}, Lcom/explorestack/protobuf/g;->G(I[BIILcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/g$b;)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/explorestack/protobuf/g;->N(I[BIILcom/explorestack/protobuf/g$b;)I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/4 p3, 0x0

    .line 109
    move-object v3, v0

    .line 110
    :goto_2
    if-ge v4, p4, :cond_9

    .line 111
    .line 112
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/g;->I([BILcom/explorestack/protobuf/g$b;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget v6, p5, Lcom/explorestack/protobuf/g$b;->a:I

    .line 117
    .line 118
    invoke-static {v6}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-static {v6}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eq v7, v5, :cond_6

    .line 127
    .line 128
    const/4 v9, 0x3

    .line 129
    if-eq v7, v9, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v2}, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->c()Lcom/explorestack/protobuf/MessageLite;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, Lcom/explorestack/protobuf/l1;->d(Ljava/lang/Class;)Lcom/explorestack/protobuf/q1;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6, p2, v4, p4, p5}, Lcom/explorestack/protobuf/g;->p(Lcom/explorestack/protobuf/q1;[BIILcom/explorestack/protobuf/g$b;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iget-object v6, v2, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 155
    .line 156
    iget-object v7, p5, Lcom/explorestack/protobuf/g$b;->c:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {p1, v6, v7}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    if-ne v8, v5, :cond_7

    .line 163
    .line 164
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/g;->b([BILcom/explorestack/protobuf/g$b;)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    iget-object v3, p5, Lcom/explorestack/protobuf/g$b;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_6
    if-nez v8, :cond_7

    .line 174
    .line 175
    invoke-static {p2, v4, p5}, Lcom/explorestack/protobuf/g;->I([BILcom/explorestack/protobuf/g$b;)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    iget p3, p5, Lcom/explorestack/protobuf/g$b;->a:I

    .line 180
    .line 181
    iget-object v2, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 182
    .line 183
    iget-object v6, p5, Lcom/explorestack/protobuf/g$b;->d:Lcom/explorestack/protobuf/y;

    .line 184
    .line 185
    iget-object v7, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 186
    .line 187
    invoke-virtual {v2, v6, v7, p3}, Lcom/explorestack/protobuf/z;->b(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lcom/explorestack/protobuf/GeneratedMessageLite$d;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    :goto_3
    sget v7, Lcom/explorestack/protobuf/WireFormat;->b:I

    .line 195
    .line 196
    if-ne v6, v7, :cond_8

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/explorestack/protobuf/g;->N(I[BIILcom/explorestack/protobuf/g$b;)I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    goto :goto_2

    .line 204
    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 205
    .line 206
    invoke-static {p3, v5}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    invoke-virtual {v1, p3, v3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    move p3, v4

    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_b
    if-ne p3, p4, :cond_c

    .line 217
    .line 218
    return-void

    .line 219
    :cond_c
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    throw p1
.end method

.method public b(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->G()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/explorestack/protobuf/e0$c;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/explorestack/protobuf/e0$c;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/explorestack/protobuf/e0$c;->isPacked()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    instance-of v3, v1, Lcom/explorestack/protobuf/k0$b;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Lcom/explorestack/protobuf/e0$c;->getNumber()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    check-cast v1, Lcom/explorestack/protobuf/k0$b;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/explorestack/protobuf/k0$b;->a()Lcom/explorestack/protobuf/k0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/explorestack/protobuf/l0;->f()Lcom/explorestack/protobuf/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p2, v2, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v2}, Lcom/explorestack/protobuf/e0$c;->getNumber()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p2, v2, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string p2, "Found invalid MessageSet item."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 92
    .line 93
    invoke-direct {p0, v0, p1, p2}, Lcom/explorestack/protobuf/c1;->h(Lcom/explorestack/protobuf/i2;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public c(Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/o1;",
            "Lcom/explorestack/protobuf/y;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/c1;->e(Lcom/explorestack/protobuf/i2;Lcom/explorestack/protobuf/z;Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/i2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Lcom/explorestack/protobuf/i2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/c1;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/e0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/explorestack/protobuf/c1;->d(Lcom/explorestack/protobuf/i2;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/explorestack/protobuf/c1;->c:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/e0;->u()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/2addr v0, p1

    .line 22
    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/i2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/explorestack/protobuf/c1;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/explorestack/protobuf/e0;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr v0, p1

    .line 28
    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/z;->c(Ljava/lang/Object;)Lcom/explorestack/protobuf/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/e0;->D()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/i2;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/z;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->b:Lcom/explorestack/protobuf/i2;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/s1;->H(Lcom/explorestack/protobuf/i2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/explorestack/protobuf/c1;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->d:Lcom/explorestack/protobuf/z;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/s1;->F(Lcom/explorestack/protobuf/z;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/c1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite$Builder;->buildPartial()Lcom/explorestack/protobuf/MessageLite;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
