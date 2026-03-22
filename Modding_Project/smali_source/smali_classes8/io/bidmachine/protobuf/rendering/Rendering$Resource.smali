.class public final Lio/bidmachine/protobuf/rendering/Rendering$Resource;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Rendering.java"

# interfaces
.implements Lio/bidmachine/protobuf/rendering/Rendering$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;,
        Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;,
        Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;,
        Lio/bidmachine/protobuf/rendering/Rendering$Resource$PayloadOrBuilder;
    }
.end annotation


# static fields
.field public static final BASE64_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Resource;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x4

.field public static final UNKNOWN_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private sourceOneofCase_:I

.field private sourceOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->memoizedIsInitialized:B

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/rendering/Rendering$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    .line 13
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

    .line 14
    :cond_2
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 15
    iget-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$Builder;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 16
    :goto_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 17
    check-cast v4, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    invoke-virtual {v2, v4}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$Builder;

    .line 18
    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 19
    :cond_4
    iput v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 21
    iput v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 22
    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 24
    iput v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 25
    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput v3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 28
    iput-object v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 31
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 34
    throw p1

    .line 35
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/rendering/Rendering$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$3600()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$3800(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3802(Lio/bidmachine/protobuf/rendering/Rendering$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3902(Lio/bidmachine/protobuf/rendering/Rendering$Resource;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4000(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4100()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_Rendering_Resource_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Resource;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
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
    instance-of v1, p1, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

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
    check-cast p1, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getSourceOneofCase()Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getSourceOneofCase()Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 33
    .line 34
    if-eq v1, v0, :cond_6

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v1, v3, :cond_5

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    if-eq v1, v3, :cond_4

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    if-eq v1, v3, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getPayload()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getPayload()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_7

    .line 59
    .line 60
    return v2

    .line 61
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getBase64()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getBase64()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_7

    .line 74
    .line 75
    return v2

    .line 76
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_7

    .line 89
    .line 90
    return v2

    .line 91
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUnknown()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUnknown()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_7

    .line 104
    .line 105
    return v2

    .line 106
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_8

    .line 115
    .line 116
    return v2

    .line 117
    :cond_8
    return v0
.end method

.method public getBase64()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_2
    return-object v0
.end method

.method public getBase64Bytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Resource;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayload()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getPayloadOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$PayloadOrBuilder;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
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
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    if-ne v1, v2, :cond_4

    .line 48
    .line 49
    iget-object v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 52
    .line 53
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 66
    .line 67
    return v0
.end method

.method public getSourceOneofCase()Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;->forNumber(I)Lio/bidmachine/protobuf/rendering/Rendering$Resource$SourceOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUnknown()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_2
    return-object v0
.end method

.method public getUnknownBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
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

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_2
    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
    return-object v0
.end method

.method public hasBase64()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hasPayload()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hasUnknown()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public hasUrl()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

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
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_4

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    mul-int/lit8 v1, v1, 0x35

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getPayload()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    add-int/2addr v1, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/2addr v1, v2

    .line 50
    mul-int/lit8 v1, v1, 0x35

    .line 51
    .line 52
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getBase64()Ljava/lang/String;

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
    goto :goto_0

    .line 61
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 62
    .line 63
    add-int/2addr v1, v2

    .line 64
    mul-int/lit8 v1, v1, 0x35

    .line 65
    .line 66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 76
    .line 77
    add-int/2addr v1, v2

    .line 78
    mul-int/lit8 v1, v1, 0x35

    .line 79
    .line 80
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUnknown()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    mul-int/lit8 v1, v1, 0x1d

    .line 90
    .line 91
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 99
    .line 100
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/RenderingProto;->internal_static_bidmachine_protobuf_Rendering_Resource_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->newBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lio/bidmachine/protobuf/rendering/Rendering$Resource$Builder;

    move-result-object v0

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
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneofCase_:I

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->sourceOneof_:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
