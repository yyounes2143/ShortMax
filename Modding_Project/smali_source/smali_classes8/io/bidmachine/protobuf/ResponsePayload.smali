.class public final Lio/bidmachine/protobuf/ResponsePayload;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "ResponsePayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/ResponsePayload$Builder;,
        Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    }
.end annotation


# static fields
.field public static final CACHE_TIME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ITEM_SPEC_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_CACHE_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CACHE_URL_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private cacheTime_:Lcom/explorestack/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/ResponsePayload$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

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

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 14
    :cond_2
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v5

    .line 16
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement;

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 18
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_0

    .line 19
    :cond_4
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 20
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v5

    .line 21
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 22
    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 23
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 24
    :cond_6
    iput v3, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    goto :goto_0

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 26
    iput v3, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 27
    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_8
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 30
    :cond_9
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 32
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 33
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 35
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 37
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 38
    throw p1

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 40
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/ByteString;)V
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

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/ResponsePayload;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lio/bidmachine/protobuf/ResponsePayload;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ResponsePayload;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/ResponsePayload;

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
    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    return v3

    .line 96
    :cond_6
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    if-eq v1, v2, :cond_8

    .line 100
    .line 101
    const/4 v2, 0x3

    .line 102
    if-eq v1, v2, :cond_7

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/openrtb/Openrtb;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_9

    .line 118
    .line 119
    return v3

    .line 120
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_9

    .line 133
    .line 134
    return v3

    .line 135
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_a

    .line 144
    .line 145
    return v3

    .line 146
    :cond_a
    return v0
.end method

.method public getCacheTime()Lcom/explorestack/protobuf/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCacheTimeOrBuilder()Lcom/explorestack/protobuf/c2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRequestItemSpecOrBuilder()Lcom/explorestack/protobuf/adcom/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getResponseCacheOrBuilder()Lcom/explorestack/protobuf/openrtb/a;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getResponseCacheUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

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
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_2
    return-object v0
.end method

.method public getResponseCacheUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

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
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

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
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v0, v1

    .line 69
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 70
    .line 71
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

.method public hasCacheTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasRequestItemSpec()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasResponseCache()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

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

.method public hasResponseCacheUrl()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

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
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

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
    add-int/lit8 v1, v1, 0x4

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    if-eq v0, v2, :cond_4

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    if-eq v0, v2, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 69
    .line 70
    add-int/2addr v1, v2

    .line 71
    mul-int/lit8 v1, v1, 0x35

    .line 72
    .line 73
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_0
    add-int/2addr v1, v0

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 84
    .line 85
    add-int/2addr v1, v2

    .line 86
    mul-int/lit8 v1, v1, 0x35

    .line 87
    .line 88
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    goto :goto_0

    .line 97
    :goto_1
    mul-int/lit8 v1, v1, 0x1d

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v1, v0

    .line 106
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 107
    .line 108
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/ResponsePayload;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/ResponsePayload$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/ResponsePayload;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->newBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneofCase_:I

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->payloadOneof_:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
