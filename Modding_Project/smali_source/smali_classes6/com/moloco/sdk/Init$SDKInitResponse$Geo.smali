.class public final Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
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
    name = "Geo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/Init$SDKInitResponse$Geo;",
        "Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x6

.field public static final COUNTRY_ISO2_CODE_FIELD_NUMBER:I = 0x2

.field public static final COUNTRY_ISO3_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

.field public static final LATITUDE_FIELD_NUMBER:I = 0x3

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$Geo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGION_FIELD_NUMBER:I = 0x7

.field public static final ZIP_CODE_FIELD_NUMBER:I = 0x5


# instance fields
.field private city_:Ljava/lang/String;

.field private countryIso2Code_:Ljava/lang/String;

.field private countryIso3Code_:Ljava/lang/String;

.field private latitude_:F

.field private longitude_:F

.field private region_:Ljava/lang/String;

.field private zipCode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

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
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearCity()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getCity()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearCountryIso2Code()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getCountryIso2Code()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearCountryIso3Code()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getCountryIso3Code()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearLatitude()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->latitude_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearLongitude()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->longitude_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearRegion()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getRegion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearZipCode()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getZipCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$Geo;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$Geo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

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

.method private setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCityBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setCountryIso2Code(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCountryIso2CodeBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setCountryIso3Code(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCountryIso3CodeBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setLatitude(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->latitude_:F

    .line 2
    .line 3
    return-void
.end method

.method private setLongitude(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->longitude_:F

    .line 2
    .line 3
    return-void
.end method

.method private setRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setRegionBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setZipCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setZipCodeBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "countryIso3Code_"

    .line 58
    .line 59
    const-string v1, "countryIso2Code_"

    .line 60
    .line 61
    const-string v2, "latitude_"

    .line 62
    .line 63
    const-string v3, "longitude_"

    .line 64
    .line 65
    const-string/jumbo v4, "zipCode_"

    .line 66
    .line 67
    .line 68
    const-string v5, "city_"

    .line 69
    .line 70
    const-string v6, "region_"

    .line 71
    .line 72
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0001\u0004\u0001\u0005\u0208\u0006\u0208\u0007\u0208"

    .line 77
    .line 78
    sget-object p3, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 79
    .line 80
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;-><init>(Lcom/moloco/sdk/k;)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 92
    .line 93
    invoke-direct {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;-><init>()V

    .line 94
    .line 95
    .line 96
    return-object p1

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

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->city_:Ljava/lang/String;

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

.method public getCountryIso2Code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountryIso2CodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso2Code_:Ljava/lang/String;

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

.method public getCountryIso3Code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountryIso3CodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->countryIso3Code_:Ljava/lang/String;

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

.method public getLatitude()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->latitude_:F

    .line 2
    .line 3
    return v0
.end method

.method public getLongitude()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->longitude_:F

    .line 2
    .line 3
    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->region_:Ljava/lang/String;

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

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getZipCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->zipCode_:Ljava/lang/String;

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
