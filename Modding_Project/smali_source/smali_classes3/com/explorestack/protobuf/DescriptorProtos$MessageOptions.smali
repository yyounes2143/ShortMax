.class public final Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

.field public static final j:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->j:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_9

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_7

    if-eq v4, v3, :cond_6

    const/16 v7, 0x18

    if-eq v4, v7, :cond_5

    const/16 v7, 0x38

    if-eq v4, v7, :cond_4

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_2

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_3

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    move v2, v3

    .line 14
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/explorestack/protobuf/j1;

    .line 15
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 16
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_4
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->f:Z

    goto :goto_0

    .line 19
    :cond_5
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->e:Z

    goto :goto_0

    .line 21
    :cond_6
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->d:Z

    goto :goto_0

    .line 23
    :cond_7
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 24
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->c:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 27
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_8

    .line 28
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 29
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 30
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->makeExtensionsImmutable()V

    .line 31
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 33
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->makeExtensionsImmutable()V

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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static I()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->M()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static J(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->M()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->i()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic s(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 2
    .line 3
    return p1
.end method

.method public static t()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public B(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8
    .line 9
    return-object p1
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

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

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

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

.method public F()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

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

.method public K()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->I()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected L(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public M()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->G()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->G()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->G()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->z()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->z()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->H()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->H()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->H()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->A()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->A()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    return v3

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->E()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->E()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v1, v2, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->E()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->v()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->v()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v1, v2, :cond_7

    .line 99
    .line 100
    return v3

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->F()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->F()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eq v1, v2, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->F()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->y()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->y()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v3

    .line 129
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->D()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->D()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    return v3

    .line 144
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 145
    .line 146
    iget-object v2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_b

    .line 153
    .line 154
    return v3

    .line 155
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_c

    .line 168
    .line 169
    return v3

    .line 170
    :cond_c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->u()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->u()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->j:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    and-int/2addr v1, v3

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 29
    .line 30
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 36
    .line 37
    and-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 43
    .line 44
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 50
    .line 51
    and-int/lit8 v1, v1, 0x8

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/4 v1, 0x7

    .line 56
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 57
    .line 58
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ge v2, v1, :cond_5

    .line 70
    .line 71
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 78
    .line 79
    const/16 v3, 0x3e7

    .line 80
    .line 81
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->e()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 102
    .line 103
    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->G()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->z()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->H()Z

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
    add-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->A()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->E()Z

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
    add-int/lit8 v1, v1, 0x3

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->v()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->F()Z

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
    add-int/lit8 v1, v1, 0x7

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->y()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->C()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_5

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit16 v1, v1, 0x3e7

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->D()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    mul-int/lit8 v0, v0, 0x1d

    .line 131
    .line 132
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v0, v1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 140
    .line 141
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->j()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->C()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->B(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->d()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

    .line 41
    .line 42
    return v2

    .line 43
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->h:B

    .line 44
    .line 45
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->K()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->L(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->K()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->M()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->M()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->g()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    and-int/2addr v1, v2

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 12
    .line 13
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    and-int/2addr v1, v2

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 40
    .line 41
    and-int/lit8 v1, v1, 0x8

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x7

    .line 46
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v1, v2, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 67
    .line 68
    const/16 v3, 0x3e7

    .line 69
    .line 70
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/high16 v1, 0x20000000

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 2
    .line 3
    return v0
.end method
