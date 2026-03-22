.class public final Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IlrdRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;",
        "Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final EVENTS_FIELD_NUMBER:I = 0x6

.field public static final IDFV_FIELD_NUMBER:I = 0x2

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLISHER_APP_ID_FIELD_NUMBER:I = 0x5

.field public static final PUBLISHER_ID_FIELD_NUMBER:I = 0x4


# instance fields
.field private deviceId_:Ljava/lang/String;

.field private events_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation
.end field

.field private idfv_:Ljava/lang/String;

.field private os_:Ljava/lang/String;

.field private publisherAppId_:Ljava/lang/String;

.field private publisherId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    .line 22
    return-void
.end method

.method static bridge synthetic a(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->addAllEvents(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllEvents(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->ensureEventsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addEvents(ILcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->ensureEventsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEvents(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->ensureEventsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->setDeviceId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->setOs(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearDeviceId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDeviceId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearEvents()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearIdfv()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getIdfv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearOs()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getOs()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearPublisherAppId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getPublisherAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearPublisherId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->getPublisherId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->setPublisherAppId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->setPublisherId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ensureEventsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method static bridge synthetic f()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private removeEvents(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->ensureEventsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setDeviceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setEvents(ILcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->ensureEventsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setIdfv(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setIdfvBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setOs(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setOsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setPublisherAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setPublisherAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setPublisherId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setPublisherIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p2, Lcom/moloco/sdk/g;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "deviceId_"

    .line 58
    .line 59
    const-string v1, "idfv_"

    .line 60
    .line 61
    const-string v2, "os_"

    .line 62
    .line 63
    const-string v3, "publisherId_"

    .line 64
    .line 65
    const-string v4, "publisherAppId_"

    .line 66
    .line 67
    const-string v5, "events_"

    .line 68
    .line 69
    const-class v6, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u001b"

    .line 76
    .line 77
    sget-object p3, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 78
    .line 79
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;

    .line 85
    .line 86
    invoke-direct {p1, p2}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest$a;-><init>(Lcom/moloco/sdk/i;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;

    .line 91
    .line 92
    invoke-direct {p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;-><init>()V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->deviceId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEvents(I)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

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

.method public getEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventsOrBuilder(I)Lcom/moloco/sdk/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/h;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdfv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdfvBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->idfv_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->os_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublisherAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisherAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherAppId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisherIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionRevenueRequest;->publisherId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
