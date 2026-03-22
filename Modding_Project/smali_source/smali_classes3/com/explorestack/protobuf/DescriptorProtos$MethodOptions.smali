.class public final Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
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
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;,
        Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

.field public static final h:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->h:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x4

    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x108

    if-eq v4, v6, :cond_6

    const/16 v6, 0x110

    if-eq v4, v6, :cond_4

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_2

    .line 13
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
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_3

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    move v2, v3

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/explorestack/protobuf/j1;

    .line 16
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 17
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 19
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v5

    if-nez v5, :cond_5

    const/16 v5, 0x22

    .line 20
    invoke-virtual {v0, v5, v4}, Lcom/explorestack/protobuf/j2$b;->A(II)Lcom/explorestack/protobuf/j2$b;

    goto :goto_0

    .line 21
    :cond_5
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 22
    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    goto :goto_0

    .line 23
    :cond_6
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 24
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->c:Z
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
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_7

    .line 28
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 29
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 30
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->makeExtensionsImmutable()V

    .line 31
    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_9

    .line 32
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 33
    :cond_9
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static C()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static D(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->u()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 2
    .line 3
    return p1
.end method

.method public static r()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

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

.method public B()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

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

.method public E()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->C()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected F(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->A()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->A()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->A()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->t()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->t()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->B()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->B()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->B()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 63
    .line 64
    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 65
    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->z()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->z()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    return v3

    .line 84
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 85
    .line 86
    iget-object v2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    return v3

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_8

    .line 108
    .line 109
    return v3

    .line 110
    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->h:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x21

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 25
    .line 26
    and-int/lit8 v2, v2, 0x2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x22

    .line 31
    .line 32
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v0, v2

    .line 39
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 54
    .line 55
    const/16 v3, 0x3e7

    .line 56
    .line 57
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v0, v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->e()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 78
    .line 79
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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->A()Z

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
    add-int/lit8 v1, v1, 0x21

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->t()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->B()Z

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
    add-int/lit8 v1, v1, 0x22

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->y()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-lez v0, :cond_3

    .line 58
    .line 59
    mul-int/lit8 v1, v1, 0x25

    .line 60
    .line 61
    add-int/lit16 v1, v1, 0x3e7

    .line 62
    .line 63
    mul-int/lit8 v1, v1, 0x35

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->z()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v1, v0

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    mul-int/lit8 v0, v0, 0x1d

    .line 83
    .line 84
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 92
    .line 93
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->v()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->y()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->v(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

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
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

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
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

    .line 41
    .line 42
    return v2

    .line 43
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->f:B

    .line 44
    .line 45
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->E()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->F(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->E()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public s()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public v(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x21

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 19
    .line 20
    and-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x22

    .line 25
    .line 26
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 47
    .line 48
    const/16 v3, 0x3e7

    .line 49
    .line 50
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/high16 v1, 0x20000000

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

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

.method public z()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
