.class public final Lcom/moloco/sdk/ConfigsOuterClass$Configs;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigsOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$ClientConfigsCase;,
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;,
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;,
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;,
        Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs;",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_CONFIG_FIELD_NUMBER:I = 0x1

.field public static final COMMON_CONFIGS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

.field public static final IOS_CONFIG_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/ConfigsOuterClass$Configs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clientConfigsCase_:I

.field private clientConfigs_:Ljava/lang/Object;

.field private commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearAndroidConfig()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearClientConfigs()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private clearCommonConfigs()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 3
    .line 4
    return-void
.end method

.method private clearIosConfig()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeAndroidConfig(Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;->newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 41
    .line 42
    return-void
.end method

.method private mergeCommonConfigs(Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeIosConfig(Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;->newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 41
    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/ConfigsOuterClass$Configs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

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

.method private setAndroidConfig(Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setCommonConfigs(Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 5
    .line 6
    return-void
.end method

.method private setIosConfig(Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "clientConfigs_"

    .line 58
    .line 59
    const-string p2, "clientConfigsCase_"

    .line 60
    .line 61
    const-class p3, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;

    .line 62
    .line 63
    const-class v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;

    .line 64
    .line 65
    const-string v1, "commonConfigs_"

    .line 66
    .line 67
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003\t"

    .line 72
    .line 73
    sget-object p3, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->DEFAULT_INSTANCE:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 74
    .line 75
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;-><init>(Lcom/moloco/sdk/f;)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;-><init>()V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    nop

    .line 93
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

.method public getAndroidConfig()Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$AndroidConfigs;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getClientConfigsCase()Lcom/moloco/sdk/ConfigsOuterClass$Configs$ClientConfigsCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$ClientConfigsCase;->forNumber(I)Lcom/moloco/sdk/ConfigsOuterClass$Configs$ClientConfigsCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCommonConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getIosConfig()Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigs_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs$IOSConfigs;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public hasAndroidConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

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

.method public hasCommonConfigs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->commonConfigs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

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

.method public hasIosConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->clientConfigsCase_:I

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
