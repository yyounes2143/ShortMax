.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
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
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

.field public static final l:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->l:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x40

    if-nez v1, :cond_d

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_a

    const/16 v7, 0x10

    if-eq v4, v7, :cond_9

    const/16 v8, 0x18

    if-eq v4, v8, :cond_8

    const/16 v7, 0x28

    if-eq v4, v7, :cond_7

    const/16 v6, 0x30

    if-eq v4, v6, :cond_5

    const/16 v6, 0x50

    if-eq v4, v6, :cond_4

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_2

    .line 14
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_2
    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_3

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    move v2, v3

    .line 16
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/explorestack/protobuf/j1;

    .line 17
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->h:Z

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 22
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x6

    .line 23
    invoke-virtual {v0, v5, v4}, Lcom/explorestack/protobuf/j2$b;->A(II)Lcom/explorestack/protobuf/j2$b;

    goto :goto_0

    .line 24
    :cond_6
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 25
    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    goto :goto_0

    .line 26
    :cond_7
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->f:Z

    goto/16 :goto_0

    .line 28
    :cond_8
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v4, v7

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 29
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->g:Z

    goto/16 :goto_0

    .line 30
    :cond_9
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->d:Z

    goto/16 :goto_0

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 33
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v6

    if-nez v6, :cond_b

    .line 34
    invoke-virtual {v0, v5, v4}, Lcom/explorestack/protobuf/j2$b;->A(II)Lcom/explorestack/protobuf/j2$b;

    goto/16 :goto_0

    .line 35
    :cond_b
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 36
    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 37
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 39
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_c

    .line 40
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 42
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->makeExtensionsImmutable()V

    .line 43
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_e

    .line 44
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 45
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 46
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static O()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->U()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static P(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->U()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->k()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic i(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic r(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic u(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 2
    .line 3
    return p1
.end method

.method public static y()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public E(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

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

.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

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

.method public G()Ljava/util/List;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public I()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public J()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public K()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public L()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public M()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public N()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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

.method public Q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->O()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected S(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public U()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->I()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->I()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->I()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 35
    .line 36
    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    return v3

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->M()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->M()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    return v3

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->M()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->D()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->D()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->K()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->K()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eq v1, v2, :cond_6

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->K()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 87
    .line 88
    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 89
    .line 90
    if-eq v1, v2, :cond_7

    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->L()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->L()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq v1, v2, :cond_8

    .line 102
    .line 103
    return v3

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->L()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->C()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->C()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eq v1, v2, :cond_9

    .line 119
    .line 120
    return v3

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->J()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->J()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eq v1, v2, :cond_a

    .line 130
    .line 131
    return v3

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->J()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->A()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->A()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eq v1, v2, :cond_b

    .line 147
    .line 148
    return v3

    .line 149
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->N()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->N()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eq v1, v2, :cond_c

    .line 158
    .line 159
    return v3

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->N()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->H()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->H()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eq v1, v2, :cond_d

    .line 175
    .line 176
    return v3

    .line 177
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->G()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->G()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_e

    .line 190
    .line 191
    return v3

    .line 192
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 193
    .line 194
    iget-object v2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_f

    .line 201
    .line 202
    return v3

    .line 203
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_10

    .line 216
    .line 217
    return v3

    .line 218
    :cond_10
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->z()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->z()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->l:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    and-int/2addr v1, v3

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->d:Z

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 36
    .line 37
    and-int/lit8 v1, v1, 0x10

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->g:Z

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 50
    .line 51
    and-int/lit8 v1, v1, 0x8

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->f:Z

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 64
    .line 65
    and-int/lit8 v1, v1, 0x4

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x6

    .line 70
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 71
    .line 72
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 78
    .line 79
    and-int/lit8 v1, v1, 0x20

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    const/16 v1, 0xa

    .line 84
    .line 85
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 86
    .line 87
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ge v2, v1, :cond_7

    .line 99
    .line 100
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 107
    .line 108
    const/16 v3, 0x3e7

    .line 109
    .line 110
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->e()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 131
    .line 132
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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->I()Z

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->M()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x25

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->D()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    add-int/2addr v1, v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->K()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    mul-int/lit8 v1, v1, 0x25

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x6

    .line 62
    .line 63
    mul-int/lit8 v1, v1, 0x35

    .line 64
    .line 65
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 66
    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->L()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x25

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x5

    .line 77
    .line 78
    mul-int/lit8 v1, v1, 0x35

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->C()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->J()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    mul-int/lit8 v1, v1, 0x25

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x3

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x35

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->A()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->N()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    mul-int/lit8 v1, v1, 0x25

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0xa

    .line 119
    .line 120
    mul-int/lit8 v1, v1, 0x35

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->H()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->F()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_7

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x25

    .line 138
    .line 139
    add-int/lit16 v1, v1, 0x3e7

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x35

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->G()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v1, v0

    .line 152
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/AbstractMessage;->hashFields(ILjava/util/Map;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    mul-int/lit8 v0, v0, 0x1d

    .line 161
    .line 162
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    iput v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 170
    .line 171
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->l()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->F()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v0, v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->E(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

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
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

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
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

    .line 41
    .line 42
    return v2

    .line 43
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j:B

    .line 44
    .line 45
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->Q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->S(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->Q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->U()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->U()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 10
    .line 11
    :cond_0
    return-object v0
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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    and-int/2addr v1, v2

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 12
    .line 13
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    and-int/2addr v1, v2

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x10

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 40
    .line 41
    and-int/lit8 v1, v1, 0x8

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 52
    .line 53
    and-int/lit8 v1, v1, 0x4

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 64
    .line 65
    and-int/lit8 v1, v1, 0x20

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 74
    .line 75
    .line 76
    :cond_5
    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v1, v2, :cond_6

    .line 84
    .line 85
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 92
    .line 93
    const/16 v3, 0x3e7

    .line 94
    .line 95
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const/high16 v1, 0x20000000

    .line 102
    .line 103
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;->a(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public z()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    return-object v0
.end method
