.class public final Lcom/explorestack/protobuf/s0;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/s0$b;,
        Lcom/explorestack/protobuf/s0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final c:Lcom/explorestack/protobuf/s0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile d:I


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 5
    iput-object p3, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 7
    new-instance p3, Lcom/explorestack/protobuf/s0$c;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/explorestack/protobuf/s0$c;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V

    iput-object p3, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/n;",
            "Lcom/explorestack/protobuf/y;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 16
    invoke-static {p2, p1, p3}, Lcom/explorestack/protobuf/t0;->d(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/t0$b;Lcom/explorestack/protobuf/y;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 19
    :goto_0
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 20
    :goto_1
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/s0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0$c;",
            "TK;TV;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 10
    iput-object p2, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/s0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/s0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/s0;->k(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Wrong FieldDescriptor \""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "\" used in message \""

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method private static k(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/s0$c;",
            "TV;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public static q(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public g()Lcom/explorestack/protobuf/s0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/s0;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/s0;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->g()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->g()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    .line 5
    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->h()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->j()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/explorestack/protobuf/s0$c;->f:Lcom/explorestack/protobuf/j1;

    .line 4
    .line 5
    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/t0;->b(Lcom/explorestack/protobuf/t0$b;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/explorestack/protobuf/s0;->d:I

    .line 20
    .line 21
    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method final i()Lcom/explorestack/protobuf/s0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/s0;->k(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/explorestack/protobuf/s0$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/s0$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/explorestack/protobuf/s0$b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/s0$a;)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->r()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0;->r()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0;->c:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/explorestack/protobuf/s0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/t0;->f(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/t0$b;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
