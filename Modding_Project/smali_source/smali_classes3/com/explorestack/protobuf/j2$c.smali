.class public final Lcom/explorestack/protobuf/j2$c;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/j2$c$a;
    }
.end annotation


# static fields
.field private static final f:Lcom/explorestack/protobuf/j2$c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/j2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/explorestack/protobuf/j2$c;->f:Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/j2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/j2$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/protobuf/j2$c;ILcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/j2$c;->v(ILcom/explorestack/protobuf/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/j2$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/explorestack/protobuf/j2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/explorestack/protobuf/j2$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/explorestack/protobuf/j2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/explorestack/protobuf/j2$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/explorestack/protobuf/j2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/explorestack/protobuf/j2$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/explorestack/protobuf/j2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/j2$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/explorestack/protobuf/j2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method private o()[Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static t()Lcom/explorestack/protobuf/j2$c$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c$a;->a()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private v(ILcom/explorestack/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 50
    .line 51
    invoke-interface {p2, p1, v1}, Lcom/explorestack/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/explorestack/protobuf/j2$c;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/j2$c;->o()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast p1, Lcom/explorestack/protobuf/j2$c;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/explorestack/protobuf/j2$c;->o()[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/j2$c;->o()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/j2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v1, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/Long;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->p(IJ)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    add-int/2addr v1, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 103
    .line 104
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->h(ILcom/explorestack/protobuf/ByteString;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    add-int/2addr v1, v2

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/explorestack/protobuf/j2;

    .line 127
    .line 128
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->t(ILcom/explorestack/protobuf/MessageLite;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    add-int/2addr v1, v2

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    return v1
.end method

.method public r(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L(ILcom/explorestack/protobuf/ByteString;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v1
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->P0(ILcom/explorestack/protobuf/ByteString;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public w(ILcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x0(II)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-virtual {p2, p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->z0(IJ)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/explorestack/protobuf/ByteString;

    .line 96
    .line 97
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r0(ILcom/explorestack/protobuf/ByteString;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/explorestack/protobuf/j2;

    .line 118
    .line 119
    invoke-virtual {p2, p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->D0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    return-void
.end method

.method x(ILcom/explorestack/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2, p1, v0, v1}, Lcom/explorestack/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p2, p1, v0}, Lcom/explorestack/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    .line 27
    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/explorestack/protobuf/j2;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/j2;->n(Lcom/explorestack/protobuf/Writer;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    :goto_1
    if-ltz v0, :cond_1

    .line 67
    .line 68
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeEndGroup(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/explorestack/protobuf/j2$c;->e:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/explorestack/protobuf/j2;

    .line 78
    .line 79
    invoke-virtual {v1, p2}, Lcom/explorestack/protobuf/j2;->n(Lcom/explorestack/protobuf/Writer;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Writer;->writeStartGroup(I)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method
