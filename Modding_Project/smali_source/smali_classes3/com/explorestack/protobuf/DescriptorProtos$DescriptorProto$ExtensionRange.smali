.class public final Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;
    }
.end annotation


# static fields
.field private static final f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

.field public static final g:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 7
    .line 8
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->g:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->e:B

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
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->e:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 12
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->z()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions$b;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 14
    :goto_1
    sget-object v3, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->e:Lcom/explorestack/protobuf/j1;

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions$b;

    .line 16
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 17
    :cond_4
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    goto :goto_0

    .line 18
    :cond_5
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v2

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->c:I

    goto :goto_0

    .line 20
    :cond_6
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v2

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 23
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 24
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 27
    throw p1

    .line 28
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 29
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
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public static g()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->G()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static s()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->v()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->r()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->r()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->r()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->k()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->k()I

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->n()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->n()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->n()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->i()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->i()I

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->q()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->q()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->q()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    return v3

    .line 105
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    return v3

    .line 116
    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->h()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->h()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->g:Lcom/explorestack/protobuf/j1;

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
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

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
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->c:I

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 35
    .line 36
    and-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 58
    .line 59
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

.method public h()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->r()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->k()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v1, v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->n()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x25

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x35

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->i()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v1, v0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->q()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x25

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x3

    .line 60
    .line 61
    mul-int/lit8 v1, v1, 0x35

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v1, v0

    .line 72
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 73
    .line 74
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/2addr v1, v0

    .line 81
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 82
    .line 83
    return v1
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->H()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

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
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->e:B

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->isInitialized()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->e:B

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->e:B

    .line 31
    .line 32
    return v1
.end method

.method public j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d:Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;->k()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

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

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->t()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->u(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->t()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

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

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

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

.method public t()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->s()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->v()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->v()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public v()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->f:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->c:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:I

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->j()Lcom/explorestack/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
