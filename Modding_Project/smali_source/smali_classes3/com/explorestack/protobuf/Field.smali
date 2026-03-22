.class public final Lcom/explorestack/protobuf/Field;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Field$b;,
        Lcom/explorestack/protobuf/Field$Cardinality;,
        Lcom/explorestack/protobuf/Field$Kind;
    }
.end annotation


# static fields
.field private static final l:Lcom/explorestack/protobuf/Field;

.field private static final m:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Object;

.field private f:I

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/lang/Object;

.field private volatile j:Ljava/lang/Object;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/Field;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/Field;->l:Lcom/explorestack/protobuf/Field;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/Field$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/Field;->m:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/Field;->k:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/Field;->k:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/Field$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field;-><init>()V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
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

    goto :goto_2

    .line 19
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 20
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    if-nez v2, :cond_1

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    move v2, v4

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/Field;->g:Z

    goto :goto_0

    .line 28
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/Field;->f:I

    goto :goto_0

    .line 29
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/Field;->c:I

    goto :goto_0

    .line 34
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 35
    iput v3, p0, Lcom/explorestack/protobuf/Field;->b:I

    goto :goto_0

    .line 36
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 37
    iput v3, p0, Lcom/explorestack/protobuf/Field;->a:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 39
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 40
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_2

    .line 41
    iget-object p2, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 42
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 43
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 44
    throw p1

    :cond_3
    if-eqz v2, :cond_4

    .line 45
    iget-object p1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 46
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x22 -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Field$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static A()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->l:Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public static M()Lcom/explorestack/protobuf/Field$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->l:Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->P()Lcom/explorestack/protobuf/Field$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->m:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/e2;->c:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/Field;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/explorestack/protobuf/Field;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic r(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic t(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic v(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic y(Lcom/explorestack/protobuf/Field;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field;->g:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public B()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->l:Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

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
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public D()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

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
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public F()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

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

.method public K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public N()Lcom/explorestack/protobuf/Field$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Field;->M()Lcom/explorestack/protobuf/Field$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected O(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Field$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/Field$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Field$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/Field$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public P()Lcom/explorestack/protobuf/Field$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->l:Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/Field$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$b;-><init>(Lcom/explorestack/protobuf/Field$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Field$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$b;-><init>(Lcom/explorestack/protobuf/Field$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Field$b;->n(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$b;

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
    instance-of v1, p1, Lcom/explorestack/protobuf/Field;

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
    check-cast p1, Lcom/explorestack/protobuf/Field;

    .line 15
    .line 16
    iget v1, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 17
    .line 18
    iget v2, p1, Lcom/explorestack/protobuf/Field;->a:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 25
    .line 26
    iget v2, p1, Lcom/explorestack/protobuf/Field;->b:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    return v3

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->H()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->H()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eq v1, v2, :cond_4

    .line 40
    .line 41
    return v3

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v3

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    return v3

    .line 72
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->I()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->I()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eq v1, v2, :cond_7

    .line 81
    .line 82
    return v3

    .line 83
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->L()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->L()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eq v1, v2, :cond_8

    .line 92
    .line 93
    return v3

    .line 94
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->K()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->K()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    return v3

    .line 109
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->E()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->E()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_a

    .line 122
    .line 123
    return v3

    .line 124
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->C()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->C()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_b

    .line 137
    .line 138
    return v3

    .line 139
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_c

    .line 148
    .line 149
    return v3

    .line 150
    :cond_c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->B()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->B()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

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
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/Field;->m:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 8
    .line 9
    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v2

    .line 27
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 28
    .line 29
    sget-object v3, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    iget v3, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 39
    .line 40
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Field;->c:I

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    const/4 v1, 0x4

    .line 66
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/Field;->f:I

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    const/4 v3, 0x7

    .line 96
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    :cond_6
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field;->g:Z

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    const/16 v3, 0x8

    .line 106
    .line 107
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ge v2, v1, :cond_8

    .line 119
    .line 120
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 127
    .line 128
    const/16 v3, 0x9

    .line 129
    .line 130
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->F()Lcom/explorestack/protobuf/ByteString;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_9

    .line 147
    .line 148
    const/16 v1, 0xa

    .line 149
    .line 150
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->D()Lcom/explorestack/protobuf/ByteString;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_a

    .line 166
    .line 167
    const/16 v1, 0xb

    .line 168
    .line 169
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    add-int/2addr v0, v1

    .line 176
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    add-int/2addr v0, v1

    .line 183
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 184
    .line 185
    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

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
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
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
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x25

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x35

    .line 31
    .line 32
    iget v0, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 33
    .line 34
    add-int/2addr v1, v0

    .line 35
    mul-int/lit8 v1, v1, 0x25

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x3

    .line 38
    .line 39
    mul-int/lit8 v1, v1, 0x35

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->H()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x25

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x4

    .line 49
    .line 50
    mul-int/lit8 v1, v1, 0x35

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x25

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x6

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x35

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v1, v0

    .line 76
    mul-int/lit8 v1, v1, 0x25

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x7

    .line 79
    .line 80
    mul-int/lit8 v1, v1, 0x35

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->I()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v1, v0

    .line 87
    mul-int/lit8 v1, v1, 0x25

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x8

    .line 90
    .line 91
    mul-int/lit8 v1, v1, 0x35

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->L()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    add-int/2addr v1, v0

    .line 102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->J()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-lez v0, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v1, v1, 0x25

    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x9

    .line 111
    .line 112
    mul-int/lit8 v1, v1, 0x35

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->K()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v1, v0

    .line 123
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 124
    .line 125
    add-int/lit8 v1, v1, 0xa

    .line 126
    .line 127
    mul-int/lit8 v1, v1, 0x35

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->E()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    add-int/2addr v1, v0

    .line 138
    mul-int/lit8 v1, v1, 0x25

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0xb

    .line 141
    .line 142
    mul-int/lit8 v1, v1, 0x35

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->C()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v1, v0

    .line 153
    mul-int/lit8 v1, v1, 0x1d

    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    add-int/2addr v1, v0

    .line 162
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 163
    .line 164
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/e2;->d:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/Field;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/explorestack/protobuf/Field;->k:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/Field;->k:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->N()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field;->O(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->N()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/Field;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->P()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->P()Lcom/explorestack/protobuf/Field$b;

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
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/explorestack/protobuf/Field;->a:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 18
    .line 19
    sget-object v1, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget v1, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->c:I

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->d:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->e:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/Field;->f:I

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x7

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->g:Z

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/16 v1, 0x8

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 88
    .line 89
    .line 90
    :cond_6
    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ge v0, v1, :cond_7

    .line 98
    .line 99
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->h:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 106
    .line 107
    const/16 v2, 0x9

    .line 108
    .line 109
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->F()Lcom/explorestack/protobuf/ByteString;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_8

    .line 124
    .line 125
    const/16 v0, 0xa

    .line 126
    .line 127
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->i:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->D()Lcom/explorestack/protobuf/ByteString;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_9

    .line 141
    .line 142
    const/16 v0, 0xb

    .line 143
    .line 144
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->j:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->b:I

    .line 2
    .line 3
    return v0
.end method
