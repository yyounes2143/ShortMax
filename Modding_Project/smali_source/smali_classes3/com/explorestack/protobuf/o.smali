.class final Lcom/explorestack/protobuf/o;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/explorestack/protobuf/o1;


# instance fields
.field private final a:Lcom/explorestack/protobuf/n;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 6
    .line 7
    const-string v0, "input"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/i0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/explorestack/protobuf/n;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 16
    .line 17
    iput-object p0, p1, Lcom/explorestack/protobuf/n;->d:Lcom/explorestack/protobuf/o;

    .line 18
    .line 19
    return-void
.end method

.method public static h(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n;->d:Lcom/explorestack/protobuf/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/o;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/o;-><init>(Lcom/explorestack/protobuf/n;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private i(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/y;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/o$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string p2, "unsupported field type."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readUInt64()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readUInt32()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readStringRequireUtf8()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readSInt64()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :pswitch_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readSInt32()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readSFixed64()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readSFixed32()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/o;->d(Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readInt64()J

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :pswitch_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readInt32()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :pswitch_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readFloat()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :pswitch_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readFixed64()J

    .line 112
    .line 113
    .line 114
    move-result-wide p1

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readFixed32()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :pswitch_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readEnum()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :pswitch_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readDouble()D

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :pswitch_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readBytes()Lcom/explorestack/protobuf/ByteString;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readBool()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/q1;->newInstance()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p1, v1, p0, p2}, Lcom/explorestack/protobuf/q1;->c(Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Lcom/explorestack/protobuf/q1;->makeImmutable(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 27
    .line 28
    iget p2, p0, Lcom/explorestack/protobuf/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    iput v0, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iput v0, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 42
    .line 43
    throw p1
.end method

.method private k(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 8
    .line 9
    iget v2, v1, Lcom/explorestack/protobuf/n;->a:I

    .line 10
    .line 11
    iget v3, v1, Lcom/explorestack/protobuf/n;->b:I

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/n;->p(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1}, Lcom/explorestack/protobuf/q1;->newInstance()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 24
    .line 25
    iget v3, v2, Lcom/explorestack/protobuf/n;->a:I

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    iput v3, v2, Lcom/explorestack/protobuf/n;->a:I

    .line 30
    .line 31
    invoke-interface {p1, v1, p0, p2}, Lcom/explorestack/protobuf/q1;->c(Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1}, Lcom/explorestack/protobuf/q1;->makeImmutable(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/n;->a(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 44
    .line 45
    iget p2, p1, Lcom/explorestack/protobuf/n;->a:I

    .line 46
    .line 47
    add-int/lit8 p2, p2, -0x1

    .line 48
    .line 49
    iput p2, p1, Lcom/explorestack/protobuf/n;->a:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/n;->o(I)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method private m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1
.end method

.method private n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    throw p1
.end method

.method private o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method private p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p1, p1, 0x7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
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
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/explorestack/protobuf/o;->k(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->K()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v0, :cond_0

    .line 39
    .line 40
    iput v1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1
.end method

.method public b(Ljava/util/Map;Lcom/explorestack/protobuf/t0$b;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;",
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
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->L()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/n;->p(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p2, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v3, p2, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 20
    .line 21
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->getFieldNumber()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const v5, 0x7fffffff

    .line 26
    .line 27
    .line 28
    if-eq v4, v5, :cond_5

    .line 29
    .line 30
    iget-object v5, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/explorestack/protobuf/n;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v5, 0x1

    .line 40
    const-string v6, "Unable to parse map entry."

    .line 41
    .line 42
    if-eq v4, v5, :cond_3

    .line 43
    .line 44
    if-eq v4, v0, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->skipField()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v4, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 54
    .line 55
    invoke-direct {v4, v6}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v4

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v4, p2, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 62
    .line 63
    iget-object v5, p2, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-direct {p0, v4, v5, p3}, Lcom/explorestack/protobuf/o;->i(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v4, p2, Lcom/explorestack/protobuf/t0$b;->a:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-direct {p0, v4, v5, v5}, Lcom/explorestack/protobuf/o;->i(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2
    :try_end_1
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->skipField()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance p1, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 90
    .line 91
    invoke-direct {p1, v6}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/n;->o(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_2
    iget-object p2, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/n;->o(I)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public c(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/o;->k(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/l1;->d(Ljava/lang/Class;)Lcom/explorestack/protobuf/q1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/o;->k(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public e(Ljava/util/List;Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
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
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/explorestack/protobuf/o;->j(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->K()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v1, v0, :cond_0

    .line 39
    .line 40
    iput v1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1
.end method

.method public f(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/q1<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/o;->j(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Ljava/lang/Class;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/y;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/l1;->d(Ljava/lang/Class;)Lcom/explorestack/protobuf/q1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/o;->j(Lcom/explorestack/protobuf/q1;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 18
    .line 19
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    :goto_1
    const v0, 0x7fffffff

    .line 34
    .line 35
    .line 36
    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public l(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_5

    .line 9
    .line 10
    instance-of v0, p1, Lcom/explorestack/protobuf/n0;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/explorestack/protobuf/n0;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readBytes()Lcom/explorestack/protobuf/ByteString;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->b(Lcom/explorestack/protobuf/ByteString;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget p2, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 42
    .line 43
    if-eq p1, p2, :cond_0

    .line 44
    .line 45
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readStringRequireUtf8()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 78
    .line 79
    if-eq v0, v1, :cond_2

    .line 80
    .line 81
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/j;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/j;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j;->addBoolean(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j;->addBoolean(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->q()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->q()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/o;->readBytes()Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->s()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/r;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/r;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, p1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->s()D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/r;->addDouble(D)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lt p1, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->s()D

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/r;->addDouble(D)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 84
    .line 85
    if-eq p1, v1, :cond_2

    .line 86
    .line 87
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 91
    .line 92
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eq v0, v2, :cond_7

    .line 97
    .line 98
    if-ne v0, v1, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->s()D

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lt v0, v1, :cond_5

    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    throw p1

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->s()D

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 172
    .line 173
    if-eq v0, v1, :cond_7

    .line 174
    .line 175
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 176
    .line 177
    return-void
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->t()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->t()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->t()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->u()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->u()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int v3, v1, p1

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->u()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-lt p1, v3, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eq v0, v2, :cond_9

    .line 98
    .line 99
    if-ne v0, v1, :cond_8

    .line 100
    .line 101
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->u()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    throw p1

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v1, v0

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->u()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-lt v0, v1, :cond_a

    .line 177
    .line 178
    :goto_0
    return-void
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->v()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/q0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/q0;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, p1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->v()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lt p1, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->v()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 84
    .line 85
    if-eq p1, v1, :cond_2

    .line 86
    .line 87
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 91
    .line 92
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eq v0, v2, :cond_7

    .line 97
    .line 98
    if-ne v0, v1, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->v()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lt v0, v1, :cond_5

    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    throw p1

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->v()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 172
    .line 173
    if-eq v0, v1, :cond_7

    .line 174
    .line 175
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 176
    .line 177
    return-void
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->w()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/f0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/f0;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/f0;->addFloat(F)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int v3, v1, p1

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/f0;->addFloat(F)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-lt p1, v3, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eq v0, v2, :cond_9

    .line 98
    .line 99
    if-ne v0, v1, :cond_8

    .line 100
    .line 101
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->w()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    throw p1

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v1, v0

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->w()F

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-lt v0, v1, :cond_a

    .line 177
    .line 178
    :goto_0
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->y()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->y()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->y()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->z()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/q0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/q0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->z()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->z()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->z()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->z()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->E()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->E()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int v3, v1, p1

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->E()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-lt p1, v3, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eq v0, v2, :cond_9

    .line 98
    .line 99
    if-ne v0, v1, :cond_8

    .line 100
    .line 101
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->E()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    throw p1

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->o(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v1, v0

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->E()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-lt v0, v1, :cond_a

    .line 177
    .line 178
    :goto_0
    return-void
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->F()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/q0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/explorestack/protobuf/q0;

    .line 9
    .line 10
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, p1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->F()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lt p1, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->F()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 84
    .line 85
    if-eq p1, v1, :cond_2

    .line 86
    .line 87
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 91
    .line 92
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eq v0, v2, :cond_7

    .line 97
    .line 98
    if-ne v0, v1, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->p(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->F()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lt v0, v1, :cond_5

    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    throw p1

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->F()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 172
    .line 173
    if-eq v0, v1, :cond_7

    .line 174
    .line 175
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 176
    .line 177
    return-void
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->G()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->G()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->G()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->G()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->G()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->H()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/q0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/q0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->H()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->H()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->H()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->H()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->I()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/o;->l(Ljava/util/List;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/o;->l(Ljava/util/List;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/h0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/h0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/h0;->addInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/o;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->M()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/q0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/q0;

    .line 8
    .line 9
    iget p1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p1, v1, :cond_0

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/q0;->addLong(J)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    iput p1, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->L()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/n;->e()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v1, v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->M()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->e()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lt v0, v1, :cond_5

    .line 132
    .line 133
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/o;->m(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->M()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->K()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v1, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    iput v0, p0, Lcom/explorestack/protobuf/o;->d:I

    .line 175
    .line 176
    return-void
.end method

.method public shouldDiscardUnknownFields()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->N()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/n;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/explorestack/protobuf/o;->b:I

    .line 10
    .line 11
    iget v1, p0, Lcom/explorestack/protobuf/o;->c:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/o;->a:Lcom/explorestack/protobuf/n;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/n;->O(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method
