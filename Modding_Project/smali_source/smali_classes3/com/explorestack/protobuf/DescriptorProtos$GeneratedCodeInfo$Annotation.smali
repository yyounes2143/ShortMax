.class public final Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    }
.end annotation


# static fields
.field private static final h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

.field public static final i:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/explorestack/protobuf/i0$g;

.field private c:I

.field private volatile d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:I

    .line 8
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:B

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

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
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:I

    .line 5
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

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

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    const/16 v5, 0x12

    if-eq v3, v5, :cond_4

    const/16 v5, 0x18

    if-eq v3, v5, :cond_3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_2

    .line 15
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 16
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    goto :goto_0

    .line 18
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:I

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 21
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 22
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v3

    .line 24
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v3

    if-nez v2, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_6

    .line 26
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    move v2, v4

    .line 27
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v4

    if-lez v4, :cond_7

    .line 28
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V

    goto :goto_1

    .line 29
    :cond_7
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/n;->o(I)V

    goto :goto_0

    :cond_8
    if-nez v2, :cond_9

    .line 30
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    move v2, v4

    .line 31
    :cond_9
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 32
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 34
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v2, :cond_a

    .line 35
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p2}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    .line 36
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 37
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 38
    throw p1

    :cond_b
    if-eqz v2, :cond_c

    .line 39
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    .line 40
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 41
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Lcom/explorestack/protobuf/i0$g;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:I

    .line 2
    .line 3
    return p1
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->K()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public static k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    return-object v0
.end method

.method public static z()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->C()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public A()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->z()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected B(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public C()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->m(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->s()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->s()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->y()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->y()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->y()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->t()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->t()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->u()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->u()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->u()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->j()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->j()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eq v1, v3, :cond_6

    .line 90
    .line 91
    return v2

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->v()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->v()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eq v1, v3, :cond_7

    .line 101
    .line 102
    return v2

    .line 103
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->v()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->q()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->q()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eq v1, v3, :cond_8

    .line 118
    .line 119
    return v2

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    return v2

    .line 131
    :cond_9
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->n()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->n()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->s()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    add-int/lit8 v0, v1, 0x1

    .line 42
    .line 43
    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v0, v1

    .line 50
    :goto_1
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:I

    .line 51
    .line 52
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 53
    .line 54
    and-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 67
    .line 68
    and-int/2addr v1, v2

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:I

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 80
    .line 81
    const/4 v2, 0x4

    .line 82
    and-int/2addr v1, v2

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    .line 86
    .line 87
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v0, v1

    .line 99
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 100
    .line 101
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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->r()I

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
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->s()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->y()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->t()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->u()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->j()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->v()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    mul-int/lit8 v1, v1, 0x25

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x4

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x35

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->q()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v1, v0

    .line 93
    :cond_4
    mul-int/lit8 v1, v1, 0x1d

    .line 94
    .line 95
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    add-int/2addr v1, v0

    .line 102
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 103
    .line 104
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->L()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:B

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
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g:B

    .line 12
    .line 13
    return v1
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->A()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->B(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->A()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

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

.method public s()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->C()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->C()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

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

.method public v()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

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

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->s()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->c:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b:Lcom/explorestack/protobuf/i0$g;

    .line 34
    .line 35
    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->I0(I)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 46
    .line 47
    and-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 58
    .line 59
    and-int/2addr v0, v1

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e:I

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    and-int/2addr v0, v1

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f:I

    .line 75
    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public y()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->a:I

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
