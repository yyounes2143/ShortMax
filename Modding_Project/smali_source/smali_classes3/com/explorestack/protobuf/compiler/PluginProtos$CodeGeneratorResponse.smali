.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "PluginProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeGeneratorResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;,
        Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$Feature;
    }
.end annotation


# static fields
.field private static final f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

.field public static final g:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private volatile b:Ljava/lang/Object;

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation
.end field

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->e:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->e:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>()V

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

    if-nez v1, :cond_7

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_5

    const/16 v6, 0x10

    if-eq v4, v6, :cond_4

    const/16 v6, 0x7a

    if-eq v4, v6, :cond_2

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

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

    iput-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    move v2, v3

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->h:Lcom/explorestack/protobuf/j1;

    .line 16
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 17
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    iget v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->c:J

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 21
    iget v6, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 22
    iput-object v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 24
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 25
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_6

    .line 26
    iget-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 27
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 28
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 29
    throw p1

    :cond_7
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 31
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 32
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$5000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->c:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->a()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic h(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public static v()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->A()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public A()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;-><init>(Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;-><init>(Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

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
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->q()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->q()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->u()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->u()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->u()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->t()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->t()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    cmp-long v1, v1, v4

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    return v3

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->s()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->s()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    return v3

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_7

    .line 103
    .line 104
    return v3

    .line 105
    :cond_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->n()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->n()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

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
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

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
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    and-int/2addr v1, v3

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->c:J

    .line 29
    .line 30
    invoke-static {v3, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v2, v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 50
    .line 51
    const/16 v3, 0xf

    .line 52
    .line 53
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 69
    .line 70
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

.method public hasError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

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
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->q()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->u()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->t()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->r()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0xf

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->s()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 81
    .line 82
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, v0

    .line 89
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 90
    .line 91
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->b()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->e:B

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
    iput-byte v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->e:B

    .line 12
    .line 13
    return v1
.end method

.method public n()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f:Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->y()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->z(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->y()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_1
    return-object v1
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

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
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->A()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->A()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

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

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->a:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->c:J

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 39
    .line 40
    const/16 v2, 0xf

    .line 41
    .line 42
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public y()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->v()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected z(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
