.class public final Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Init.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/Init$SDKInitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILRDConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;",
        "Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

.field public static final ENABLED_FIELD_NUMBER:I = 0x1

.field public static final MAX_BATCH_SIZE_FIELD_NUMBER:I = 0x5

.field public static final MAX_SESSION_LEN_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_IMP_URL_FIELD_NUMBER:I = 0x2

.field public static final RETRY_COUNT_FIELD_NUMBER:I = 0x4

.field public static final SESSION_EXP_FIELD_NUMBER:I = 0x3

.field public static final SUPPORTED_NETWORKS_FIELD_NUMBER:I = 0x8

.field public static final UPLOAD_INTERVAL_FIELD_NUMBER:I = 0x7

.field private static final supportedNetworks_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enabled_:Z

.field private maxBatchSize_:I

.field private maxSessionLen_:I

.field private rawImpUrl_:Ljava/lang/String;

.field private retryCount_:I

.field private sessionExp_:I

.field private supportedNetworksMemoizedSerializedSize:I

.field private supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

.field private uploadInterval_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 14
    .line 15
    const-class v1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 18
    .line 19
    .line 20
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
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAllSupportedNetworks(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addAllSupportedNetworksValue(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private addSupportedNetworks(Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private addSupportedNetworksValue(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private clearEnabled()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->enabled_:Z

    .line 3
    .line 4
    return-void
.end method

.method private clearMaxBatchSize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxBatchSize_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearMaxSessionLen()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxSessionLen_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearRawImpUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getRawImpUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearRetryCount()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->retryCount_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearSessionExp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->sessionExp_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearSupportedNetworks()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearUploadInterval()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->uploadInterval_:I

    .line 3
    .line 4
    return-void
.end method

.method private ensureSupportedNetworksIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

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
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

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

.method private setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->enabled_:Z

    .line 2
    .line 3
    return-void
.end method

.method private setMaxBatchSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxBatchSize_:I

    .line 2
    .line 3
    return-void
.end method

.method private setMaxSessionLen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxSessionLen_:I

    .line 2
    .line 3
    return-void
.end method

.method private setRawImpUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setRawImpUrlBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->retryCount_:I

    .line 2
    .line 3
    return-void
.end method

.method private setSessionExp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->sessionExp_:I

    .line 2
    .line 3
    return-void
.end method

.method private setSupportedNetworks(ILcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->getNumber()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setSupportedNetworksValue(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->ensureSupportedNetworksIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setUploadInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->uploadInterval_:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p2, Lcom/moloco/sdk/j;->a:[I

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "enabled_"

    .line 58
    .line 59
    const-string v1, "rawImpUrl_"

    .line 60
    .line 61
    const-string v2, "sessionExp_"

    .line 62
    .line 63
    const-string v3, "retryCount_"

    .line 64
    .line 65
    const-string v4, "maxBatchSize_"

    .line 66
    .line 67
    const-string v5, "maxSessionLen_"

    .line 68
    .line 69
    const-string/jumbo v6, "uploadInterval_"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v7, "supportedNetworks_"

    .line 73
    .line 74
    .line 75
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u0007\u0002\u0208\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0004\u0007\u0004\u0008,"

    .line 80
    .line 81
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 82
    .line 83
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;

    .line 89
    .line 90
    invoke-direct {p1, p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;-><init>(Lcom/moloco/sdk/k;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;-><init>()V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    nop

    .line 101
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

.method public getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->enabled_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMaxBatchSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxBatchSize_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxSessionLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->maxSessionLen_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRawImpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawImpUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->rawImpUrl_:Ljava/lang/String;

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

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->retryCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSessionExp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->sessionExp_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSupportedNetworks(I)Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->forNumber(I)Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->UNRECOGNIZED:Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getSupportedNetworksCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

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

.method public getSupportedNetworksList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getSupportedNetworksValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSupportedNetworksValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->supportedNetworks_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUploadInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->uploadInterval_:I

    .line 2
    .line 3
    return v0
.end method
