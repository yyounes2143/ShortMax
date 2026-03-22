.class final Lcom/explorestack/protobuf/e0$b;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/explorestack/protobuf/e0$c<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/explorestack/protobuf/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/u1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/explorestack/protobuf/u1;->r(I)Lcom/explorestack/protobuf/u1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/e0$b;-><init>(Lcom/explorestack/protobuf/u1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/u1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/u1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/explorestack/protobuf/e0$b;->c:Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/e0;->a(Lcom/explorestack/protobuf/u1;Z)Lcom/explorestack/protobuf/u1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/explorestack/protobuf/e0$b;->c:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private n(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/e0$c;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v1, p1, Lcom/explorestack/protobuf/k0;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/explorestack/protobuf/k0;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k0;->g()Lcom/explorestack/protobuf/MessageLite;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/e0$b;->f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v3, v1

    .line 55
    check-cast v3, Ljava/util/List;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/explorestack/protobuf/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v0}, Lcom/explorestack/protobuf/e0$c;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 76
    .line 77
    if-ne v1, v2, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/e0$b;->f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/explorestack/protobuf/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    instance-of v2, v1, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    check-cast v1, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 100
    .line 101
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    .line 102
    .line 103
    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/e0$c;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 108
    .line 109
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    .line 114
    .line 115
    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/e0$c;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 124
    .line 125
    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/explorestack/protobuf/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method private static p(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/e0$c<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/explorestack/protobuf/e0$c;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_6

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_5

    .line 17
    .line 18
    instance-of p0, p1, Ljava/util/List;

    .line 19
    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    move-object p0, p1

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_3

    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/explorestack/protobuf/e0$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eq v2, v1, :cond_2

    .line 41
    .line 42
    if-ne p0, p1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    move-object p0, v1

    .line 50
    :cond_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object p0

    .line 57
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "Repeated field should contains a List but actually contains type: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/e0$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_6
    return-object p1
.end method

.method private static q(Lcom/explorestack/protobuf/u1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/e0$c<",
            "TT;>;>(",
            "Lcom/explorestack/protobuf/u1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/u1;->l()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/u1;->k(I)Ljava/util/Map$Entry;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/explorestack/protobuf/e0$b;->r(Ljava/util/Map$Entry;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/u1;->n()Ljava/lang/Iterable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/explorestack/protobuf/e0$b;->r(Ljava/util/Map$Entry;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method private static r(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/e0$c<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/e0$c;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/e0$b;->p(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p0, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private u(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lcom/explorestack/protobuf/e0;->d(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->getNumber()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 59
    .line 60
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    iput-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/e0$b;->u(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/e0$b;->f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "addRepeatedField() can only be called on repeated fields."

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public b()Lcom/explorestack/protobuf/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/e0;->r()Lcom/explorestack/protobuf/e0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->c:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/e0;->a(Lcom/explorestack/protobuf/u1;Z)Lcom/explorestack/protobuf/u1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/explorestack/protobuf/e0$b;->q(Lcom/explorestack/protobuf/u1;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Lcom/explorestack/protobuf/e0;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/e0;-><init>(Lcom/explorestack/protobuf/u1;Lcom/explorestack/protobuf/e0$a;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/explorestack/protobuf/e0$b;->b:Z

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/e0;->b(Lcom/explorestack/protobuf/e0;Z)Z

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public c(Lcom/explorestack/protobuf/e0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/u1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/explorestack/protobuf/e0$b;->b:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/e0;->a(Lcom/explorestack/protobuf/u1;Z)Lcom/explorestack/protobuf/u1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/explorestack/protobuf/u1;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/u1;->q()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/e0$b;->q(Lcom/explorestack/protobuf/u1;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/explorestack/protobuf/u1;->p()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    return-object v0
.end method

.method public f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/e0$b;->g(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/e0$b;->p(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method g(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/u1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/explorestack/protobuf/k0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/explorestack/protobuf/k0;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k0;->g()Lcom/explorestack/protobuf/MessageLite;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    return-object p1
.end method

.method public h(Lcom/explorestack/protobuf/e0$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/e0$b;->i(Lcom/explorestack/protobuf/e0$c;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/explorestack/protobuf/e0$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method i(Lcom/explorestack/protobuf/e0$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/e0$b;->g(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p2, "getRepeatedField() can only be called on repeated fields."

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public j(Lcom/explorestack/protobuf/e0$c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/e0$b;->f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "getRepeatedField() can only be called on repeated fields."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public k(Lcom/explorestack/protobuf/e0$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/u1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "hasField() can only be called on non-repeated fields."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public l()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/explorestack/protobuf/u1;->l()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/u1;->k(I)Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/explorestack/protobuf/e0;->e(Ljava/util/Map$Entry;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/u1;->n()Ljava/lang/Iterable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/explorestack/protobuf/e0;->e(Ljava/util/Map$Entry;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    return v0

    .line 56
    :cond_3
    const/4 v0, 0x1

    .line 57
    return v0
.end method

.method public m(Lcom/explorestack/protobuf/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/e0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/explorestack/protobuf/e0;->c(Lcom/explorestack/protobuf/e0;)Lcom/explorestack/protobuf/u1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/u1;->l()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lcom/explorestack/protobuf/e0;->c(Lcom/explorestack/protobuf/e0;)Lcom/explorestack/protobuf/u1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/u1;->k(I)Ljava/util/Map$Entry;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/e0$b;->n(Ljava/util/Map$Entry;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/e0;->c(Lcom/explorestack/protobuf/e0;)Lcom/explorestack/protobuf/u1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/explorestack/protobuf/u1;->n()Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/e0$b;->n(Ljava/util/Map$Entry;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method public s(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    instance-of v0, p2, Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    check-cast p2, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0, p1, v3}, Lcom/explorestack/protobuf/e0$b;->u(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v4, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    instance-of v3, v3, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move v3, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    move v3, v2

    .line 55
    :goto_2
    iput-boolean v3, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object p2, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "Wrong object type used with protocol message reflection."

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/e0$b;->u(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    instance-of v0, p2, Lcom/explorestack/protobuf/k0;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/explorestack/protobuf/e0$b;->b:Z

    .line 76
    .line 77
    :cond_5
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    instance-of v0, p2, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    :cond_6
    move v1, v2

    .line 86
    :cond_7
    iput-boolean v1, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/explorestack/protobuf/e0$b;->a:Lcom/explorestack/protobuf/u1;

    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/u1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public t(Lcom/explorestack/protobuf/e0$c;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/e0$b;->d()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/explorestack/protobuf/e0$c;->isRepeated()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p3, Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    iput-boolean v0, p0, Lcom/explorestack/protobuf/e0$b;->d:Z

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/e0$b;->f(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p1, p3}, Lcom/explorestack/protobuf/e0$b;->u(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p2, "getRepeatedField() can only be called on repeated fields."

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
