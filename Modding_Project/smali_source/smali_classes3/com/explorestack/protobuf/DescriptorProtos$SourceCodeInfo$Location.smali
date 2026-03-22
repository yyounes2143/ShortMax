.class public final Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    }
.end annotation


# static fields
.field private static final j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

.field public static final k:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
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

.field private d:Lcom/explorestack/protobuf/i0$g;

.field private e:I

.field private volatile f:Ljava/lang/Object;

.field private volatile g:Ljava/lang/Object;

.field private h:Lcom/explorestack/protobuf/n0;

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:I

    .line 9
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:I

    .line 10
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:B

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 12
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

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
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:I

    .line 5
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:I

    .line 6
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_13

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_e

    const/16 v6, 0xa

    if-eq v4, v6, :cond_b

    if-eq v4, v3, :cond_9

    const/16 v6, 0x12

    if-eq v4, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_5

    const/16 v6, 0x22

    if-eq v4, v6, :cond_4

    const/16 v6, 0x32

    if-eq v4, v6, :cond_2

    .line 20
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_3

    .line 22
    new-instance v5, Lcom/explorestack/protobuf/m0;

    invoke-direct {v5}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    or-int/lit8 v2, v2, 0x10

    .line 23
    :cond_3
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/n0;->b(Lcom/explorestack/protobuf/ByteString;)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 25
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 26
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 28
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 29
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v4

    .line 31
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_7

    .line 32
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_7

    .line 33
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    or-int/lit8 v2, v2, 0x2

    .line 34
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_8

    .line 35
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V

    goto :goto_1

    .line 36
    :cond_8
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    .line 37
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    or-int/lit8 v2, v2, 0x2

    .line 38
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V

    goto/16 :goto_0

    .line 39
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->C()I

    move-result v4

    .line 40
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->p(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_c

    .line 41
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_c

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    or-int/lit8 v2, v2, 0x1

    .line 43
    :cond_c
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->d()I

    move-result v5

    if-lez v5, :cond_d

    .line 44
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V

    goto :goto_2

    .line 45
    :cond_d
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/n;->o(I)V

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_f

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    or-int/lit8 v2, v2, 0x1

    .line 47
    :cond_f
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/i0$g;->addInt(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_3
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50
    :goto_4
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_10

    .line 51
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p2}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    :cond_10
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_11

    .line 52
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p2}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    :cond_11
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_12

    .line 53
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 54
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 55
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 56
    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_14

    .line 57
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    :cond_14
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_15

    .line 58
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_16

    .line 59
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 60
    :cond_16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 61
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static F()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->I()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic b(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/i0$g;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/i0$g;)Lcom/explorestack/protobuf/i0$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->E()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public static r()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

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

.method public B()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

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

.method public E()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

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

.method public G()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->F()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected H(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public I()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->z()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->z()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->B()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->B()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->D()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->D()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eq v1, v3, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->D()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->t()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->t()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    return v2

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->E()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->E()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v1, v3, :cond_6

    .line 88
    .line 89
    return v2

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->E()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->C()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->C()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_7

    .line 109
    .line 110
    return v2

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->v()Lcom/explorestack/protobuf/m1;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->v()Lcom/explorestack/protobuf/m1;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_8

    .line 124
    .line 125
    return v2

    .line 126
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_9

    .line 135
    .line 136
    return v2

    .line 137
    :cond_9
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->s()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->s()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/explorestack/protobuf/j1;

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
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 19
    .line 20
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->z()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    add-int/lit8 v1, v2, 0x1

    .line 43
    .line 44
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/2addr v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v1, v2

    .line 51
    :goto_1
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:I

    .line 52
    .line 53
    move v2, v0

    .line 54
    move v3, v2

    .line 55
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v2, v4, :cond_3

    .line 62
    .line 63
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 64
    .line 65
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    add-int/2addr v3, v4

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/2addr v1, v3

    .line 78
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->B()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    add-int/2addr v1, v2

    .line 95
    :cond_4
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:I

    .line 96
    .line 97
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 98
    .line 99
    and-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    add-int/2addr v1, v2

    .line 111
    :cond_5
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 112
    .line 113
    and-int/lit8 v2, v2, 0x2

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    add-int/2addr v1, v2

    .line 125
    :cond_6
    move v2, v0

    .line 126
    :goto_3
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ge v0, v3, :cond_7

    .line 133
    .line 134
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 135
    .line 136
    invoke-interface {v3, v0}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    add-int/2addr v2, v3

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    add-int/2addr v1, v2

    .line 149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->v()Lcom/explorestack/protobuf/m1;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    add-int/2addr v1, v0

    .line 165
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 166
    .line 167
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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->y()I

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->z()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->A()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_2

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->B()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->D()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->t()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->E()Z

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
    add-int/lit8 v1, v1, 0x4

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->C()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->u()I

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
    add-int/lit8 v1, v1, 0x6

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->v()Lcom/explorestack/protobuf/m1;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_5
    mul-int/lit8 v1, v1, 0x1d

    .line 123
    .line 124
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 132
    .line 133
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->F()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->G()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->H(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->G()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public s()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->I()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->I()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

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

.method public v()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->z()Ljava/util/List;

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    move v1, v0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 35
    .line 36
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->I0(I)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->B()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0x12

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    move v1, v0

    .line 67
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v1, v2, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/explorestack/protobuf/i0$g;

    .line 76
    .line 77
    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/i0$g;->getInt(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->I0(I)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 88
    .line 89
    and-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:I

    .line 100
    .line 101
    and-int/lit8 v1, v1, 0x2

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    const/4 v1, 0x4

    .line 106
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ge v0, v1, :cond_6

    .line 118
    .line 119
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Lcom/explorestack/protobuf/n0;

    .line 120
    .line 121
    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v2, 0x6

    .line 126
    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/explorestack/protobuf/i0$g;

    .line 2
    .line 3
    return-object v0
.end method
