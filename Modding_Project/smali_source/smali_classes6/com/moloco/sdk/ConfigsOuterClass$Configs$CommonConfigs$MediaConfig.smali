.class public final Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigsOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

.field public static final MIN_STREAMING_PLAYABLE_DURATION_ON_TIMEOUT_SECS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAMING_CHUNK_SIZE_KILOBYTES_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private minStreamingPlayableDurationOnTimeoutSecs_:D

.field private streamingChunkSizeKilobytes_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearMinStreamingPlayableDurationOnTimeoutSecs()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->minStreamingPlayableDurationOnTimeoutSecs_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearStreamingChunkSizeKilobytes()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->streamingChunkSizeKilobytes_:J

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

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

.method private setMinStreamingPlayableDurationOnTimeoutSecs(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->minStreamingPlayableDurationOnTimeoutSecs_:D

    .line 8
    .line 9
    return-void
.end method

.method private setStreamingChunkSizeKilobytes(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->streamingChunkSizeKilobytes_:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/moloco/sdk/e;->a:[I

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
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "bitField0_"

    .line 58
    .line 59
    const-string/jumbo p2, "streamingChunkSizeKilobytes_"

    .line 60
    .line 61
    .line 62
    const-string p3, "minStreamingPlayableDurationOnTimeoutSecs_"

    .line 63
    .line 64
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1000\u0001"

    .line 69
    .line 70
    sget-object p3, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 71
    .line 72
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig$a;-><init>(Lcom/moloco/sdk/f;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 84
    .line 85
    invoke-direct {p1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;-><init>()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
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

.method public getMinStreamingPlayableDurationOnTimeoutSecs()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->minStreamingPlayableDurationOnTimeoutSecs_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStreamingChunkSizeKilobytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->streamingChunkSizeKilobytes_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasMinStreamingPlayableDurationOnTimeoutSecs()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

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

.method public hasStreamingChunkSizeKilobytes()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->bitField0_:I

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
