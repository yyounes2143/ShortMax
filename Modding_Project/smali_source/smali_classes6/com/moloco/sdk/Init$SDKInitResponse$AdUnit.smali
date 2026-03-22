.class public final Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Init.java"

# interfaces
.implements Lcom/moloco/sdk/Init$SDKInitResponse$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/Init$SDKInitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;,
        Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;,
        Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
        "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;",
        ">;",
        "Lcom/moloco/sdk/Init$SDKInitResponse$a;"
    }
.end annotation


# static fields
.field public static final AD_FREQUENCY_FIELD_NUMBER:I = 0x3

.field public static final BID_FLOOR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x5

.field public static final NATIVE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private adFrequency_:I

.field private bidFloor_:F

.field private id_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

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
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearAdFrequency()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->adFrequency_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearBidFloor()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->bidFloor_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearNative()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 3
    .line 4
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->type_:I

    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeNative(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native$a;

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
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

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

.method private setAdFrequency(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->adFrequency_:I

    .line 2
    .line 3
    return-void
.end method

.method private setBidFloor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->bidFloor_:F

    .line 2
    .line 3
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setNative(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 5
    .line 6
    return-void
.end method

.method private setType(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->type_:I

    .line 6
    .line 7
    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->type_:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "id_"

    .line 58
    .line 59
    const-string/jumbo v1, "type_"

    .line 60
    .line 61
    .line 62
    const-string v2, "adFrequency_"

    .line 63
    .line 64
    const-string v3, "bidFloor_"

    .line 65
    .line 66
    const-string v4, "name_"

    .line 67
    .line 68
    const-string v5, "native_"

    .line 69
    .line 70
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u0004\u0004\u0001\u0005\u0208\u0006\t"

    .line 75
    .line 76
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 77
    .line 78
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$a;-><init>(Lcom/moloco/sdk/k;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 90
    .line 91
    invoke-direct {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;-><init>()V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
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

.method public getAdFrequency()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->adFrequency_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBidFloor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->bidFloor_:F

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->id_:Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->name_:Ljava/lang/String;

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

.method public getNative()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getType()Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;->forNumber(I)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;->UNRECOGNIZED:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$InventoryType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->type_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasNative()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;->native_:Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit$Native;

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
