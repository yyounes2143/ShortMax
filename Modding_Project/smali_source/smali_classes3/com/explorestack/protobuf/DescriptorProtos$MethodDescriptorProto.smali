.class public final Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
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
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    }
.end annotation


# static fields
.field private static final i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

.field public static final j:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private volatile b:Ljava/lang/Object;

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

.field private f:Z

.field private g:Z

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->h:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->h:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_9

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 15
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    goto :goto_0

    .line 17
    :cond_3
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Z

    goto :goto_0

    .line 19
    :cond_4
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->G()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 21
    :goto_1
    sget-object v3, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->h:Lcom/explorestack/protobuf/j1;

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;

    .line 23
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 24
    :cond_6
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    goto :goto_0

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    .line 26
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 27
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    .line 29
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 30
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    .line 32
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 33
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 34
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 36
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 38
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 39
    throw p1

    .line 40
    :cond_a
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static E()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->H()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic b(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->e()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public static r()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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

.method public B()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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

.method public C()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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

.method public D()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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

.method public F()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->E()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected G(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public H()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->A()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->A()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->A()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->t()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->t()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->C()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->C()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->C()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->v()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->v()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->B()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->B()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    return v3

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->B()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    return v3

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->z()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->z()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    return v3

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->z()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->q()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->q()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v1, v2, :cond_b

    .line 171
    .line 172
    return v3

    .line 173
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->D()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->D()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v1, v2, :cond_c

    .line 182
    .line 183
    return v3

    .line 184
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->D()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_d

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->y()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->y()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eq v1, v2, :cond_d

    .line 199
    .line 200
    return v3

    .line 201
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 204
    .line 205
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_e

    .line 210
    .line 211
    return v3

    .line 212
    :cond_e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->s()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->s()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    and-int/2addr v1, v2

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 49
    .line 50
    and-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 64
    .line 65
    and-int/lit8 v1, v1, 0x10

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Z

    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 78
    .line 79
    and-int/lit8 v1, v1, 0x20

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 99
    .line 100
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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->A()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->t()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->C()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->v()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->B()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->z()Z

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
    add-int/lit8 v1, v1, 0x5

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->q()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->D()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    mul-int/lit8 v1, v1, 0x25

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x6

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->y()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v1, v0

    .line 143
    :cond_6
    mul-int/lit8 v1, v1, 0x1d

    .line 144
    .line 145
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v1, v0

    .line 152
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 153
    .line 154
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->f()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

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
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->h:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->h:B

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->h:B

    .line 31
    .line 32
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->F()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->G(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->F()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->i:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->H()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->H()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->r()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->u()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x10

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Z

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

    .line 61
    .line 62
    and-int/lit8 v0, v0, 0x20

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->a:I

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
