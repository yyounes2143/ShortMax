.class public final Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;,
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x2

.field public static final FIELD_PRESENCE_FIELD_NUMBER:I = 0x1

.field public static final JSON_FORMAT_FIELD_NUMBER:I = 0x6

.field public static final MESSAGE_ENCODING_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPEATED_FIELD_ENCODING_FIELD_NUMBER:I = 0x3

.field public static final UTF8_VALIDATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private enumType_:I

.field private fieldPresence_:I

.field private jsonFormat_:I

.field private memoizedIsInitialized:B

.field private messageEncoding_:I

.field private repeatedFieldEncoding_:I

.field private utf8Validation_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 7
    .line 8
    const-class v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$52100()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$52200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setFieldPresence(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearFieldPresence()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52400(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setEnumType(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52500(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearEnumType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52600(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setRepeatedFieldEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52700(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearRepeatedFieldEncoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52800(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setUtf8Validation(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$52900(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearUtf8Validation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$53000(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setMessageEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$53100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearMessageEncoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$53200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setJsonFormat(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$53300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearJsonFormat()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearEnumType()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearFieldPresence()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearJsonFormat()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMessageEncoding()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearRepeatedFieldEncoding()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearUtf8Validation()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .locals 1

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setEnumType(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setFieldPresence(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setJsonFormat(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x20

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setMessageEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x10

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setRepeatedFieldEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private setUtf8Validation(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    .line 6
    .line 7
    iget p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    aget v0, v0, v2

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :pswitch_0
    if-nez p2, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    int-to-byte v0, v0

    .line 26
    iput-byte v0, v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_1
    iget-byte v0, v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->memoizedIsInitialized:B

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :pswitch_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const-class v2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 48
    .line 49
    sget-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    monitor-exit v2

    .line 60
    goto :goto_3

    .line 61
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_3
    return-object v0

    .line 64
    :pswitch_3
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_4
    const-string v2, "bitField0_"

    .line 68
    .line 69
    const-string v3, "fieldPresence_"

    .line 70
    .line 71
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "enumType_"

    .line 76
    .line 77
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v7, "repeatedFieldEncoding_"

    .line 82
    .line 83
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string/jumbo v9, "utf8Validation_"

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    const-string v11, "messageEncoding_"

    .line 95
    .line 96
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    const-string v13, "jsonFormat_"

    .line 101
    .line 102
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->internalGetVerifier()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    filled-new-array/range {v2 .. v14}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005"

    .line 111
    .line 112
    sget-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 113
    .line 114
    invoke-static {v3, v2, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0

    .line 119
    :pswitch_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;

    .line 120
    .line 121
    invoke-direct {v0, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;-><init>(Landroidx/datastore/preferences/protobuf/DescriptorProtos$1;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :pswitch_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    .line 126
    .line 127
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;-><init>()V

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
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

.method public getEnumType()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->enumType_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;->ENUM_TYPE_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getFieldPresence()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->fieldPresence_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getJsonFormat()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->jsonFormat_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->JSON_FORMAT_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getMessageEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->messageEncoding_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->MESSAGE_ENCODING_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getRepeatedFieldEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->repeatedFieldEncoding_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->REPEATED_FIELD_ENCODING_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getUtf8Validation()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->utf8Validation_:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasEnumType()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

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

.method public hasFieldPresence()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

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

.method public hasJsonFormat()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

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

.method public hasMessageEncoding()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

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

.method public hasRepeatedFieldEncoding()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

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

.method public hasUtf8Validation()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

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
