.class public final Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;,
        Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    }
.end annotation


# static fields
.field private static final j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

.field public static final k:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;

.field private d:J

.field private e:J

.field private f:D

.field private g:Lcom/explorestack/protobuf/ByteString;

.field private volatile h:Ljava/lang/Object;

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->i:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->i:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0x12

    if-eq v3, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_7

    const/16 v5, 0x20

    if-eq v3, v5, :cond_6

    const/16 v6, 0x28

    if-eq v3, v6, :cond_5

    const/16 v6, 0x31

    if-eq v3, v6, :cond_4

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_3

    const/16 v6, 0x42

    if-eq v3, v6, :cond_2

    .line 15
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 17
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 18
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    goto :goto_0

    .line 21
    :cond_4
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->s()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->f:D

    goto :goto_0

    .line 23
    :cond_5
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 24
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->z()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    goto :goto_0

    .line 25
    :cond_6
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 26
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->d:J

    goto :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 28
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 29
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    move v2, v4

    .line 31
    :cond_9
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->f:Lcom/explorestack/protobuf/j1;

    .line 32
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 33
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 34
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 36
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_a

    .line 37
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 38
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 39
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 40
    throw p1

    :cond_b
    if-eqz v2, :cond_c

    .line 41
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 42
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static J()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->M()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic b(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->d:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->w()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->f:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public static s()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public D()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public G()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public H()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public K()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->J()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected L(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public M()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;->p(Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->A()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->A()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->G()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->G()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->G()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->v()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->v()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    return v2

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->I()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->I()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eq v1, v3, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->I()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->C()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->C()J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    cmp-long v1, v3, v5

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    return v2

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->H()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->H()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eq v1, v3, :cond_7

    .line 103
    .line 104
    return v2

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->H()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->B()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->B()J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    cmp-long v1, v3, v5

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    return v2

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->F()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->F()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eq v1, v3, :cond_9

    .line 133
    .line 134
    return v2

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->F()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->u()D

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->u()D

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    cmp-long v1, v3, v5

    .line 158
    .line 159
    if-eqz v1, :cond_a

    .line 160
    .line 161
    return v2

    .line 162
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eq v1, v3, :cond_b

    .line 171
    .line 172
    return v2

    .line 173
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_c

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->D()Lcom/explorestack/protobuf/ByteString;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->D()Lcom/explorestack/protobuf/ByteString;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_c

    .line 192
    .line 193
    return v2

    .line 194
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->E()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->E()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eq v1, v3, :cond_d

    .line 203
    .line 204
    return v2

    .line 205
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->E()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_e

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->r()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->r()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_e

    .line 224
    .line 225
    return v2

    .line 226
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 229
    .line 230
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_f

    .line 235
    .line 236
    return v2

    .line 237
    :cond_f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->t()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->t()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v1, v0

    .line 48
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 49
    .line 50
    and-int/2addr v0, v3

    .line 51
    const/4 v2, 0x4

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->d:J

    .line 55
    .line 56
    invoke-static {v2, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v1, v0

    .line 61
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 62
    .line 63
    and-int/2addr v0, v2

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    iget-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 68
    .line 69
    invoke-static {v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->z(IJ)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v1, v0

    .line 74
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    and-int/2addr v0, v2

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    iget-wide v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->f:D

    .line 83
    .line 84
    invoke-static {v0, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->j(ID)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, v0

    .line 89
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x10

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    const/4 v0, 0x7

    .line 96
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    .line 97
    .line 98
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->h(ILcom/explorestack/protobuf/ByteString;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 104
    .line 105
    and-int/lit8 v0, v0, 0x20

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v1, v0

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v0

    .line 123
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 124
    .line 125
    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->z()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->A()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->G()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x25

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x3

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->v()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->I()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x4

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->C()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->H()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x25

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x5

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->B()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->F()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x6

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->u()D

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    add-int/2addr v1, v0

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x25

    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x7

    .line 135
    .line 136
    mul-int/lit8 v1, v1, 0x35

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->D()Lcom/explorestack/protobuf/ByteString;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v1, v0

    .line 147
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->E()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    mul-int/lit8 v1, v1, 0x25

    .line 154
    .line 155
    add-int/lit8 v1, v1, 0x8

    .line 156
    .line 157
    mul-int/lit8 v1, v1, 0x35

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->r()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    add-int/2addr v1, v0

    .line 168
    :cond_7
    mul-int/lit8 v1, v1, 0x1d

    .line 169
    .line 170
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    add-int/2addr v1, v0

    .line 177
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 178
    .line 179
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->x()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->i:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move v0, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->z()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->y(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->i:B

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->i:B

    .line 35
    .line 36
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->K()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->L(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->K()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public t()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->j:Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->M()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->M()Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;

    move-result-object v0

    return-object v0
.end method

.method public u()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->f:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 18
    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 26
    .line 27
    and-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    const/4 v1, 0x4

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->d:J

    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 49
    .line 50
    and-int/2addr v0, v1

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    iget-wide v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->J0(IJ)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    and-int/2addr v0, v1

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    iget-wide v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->f:D

    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->t0(ID)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 73
    .line 74
    and-int/lit8 v0, v0, 0x10

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->g:Lcom/explorestack/protobuf/ByteString;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->r0(ILcom/explorestack/protobuf/ByteString;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->a:I

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0x20

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->h:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public y(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 8
    .line 9
    return-object p1
.end method

.method public z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
