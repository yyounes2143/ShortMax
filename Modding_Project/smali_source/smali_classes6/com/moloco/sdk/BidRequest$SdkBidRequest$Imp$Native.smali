.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;",
        ">;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0x3

.field public static final BATTR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_NATIVE_FIELD_NUMBER:I = 0x32

.field public static final VER_FIELD_NUMBER:I = 0x2

.field private static final api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation
.end field

.field private static final battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiMemoizedSerializedSize:I

.field private api_:Lcom/google/protobuf/Internal$IntList;

.field private battrMemoizedSerializedSize:I

.field private battr_:Lcom/google/protobuf/Internal$IntList;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private requestOneofCase_:I

.field private requestOneof_:Ljava/lang/Object;

.field private ver_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 21
    .line 22
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->memoizedIsInitialized:B

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 25
    .line 26
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAllApi(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureApiIsMutable()V

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
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

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

.method private addAllBattr(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureBattrIsMutable()V

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
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

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

.method private addApi(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureApiIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

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

.method private addBattr(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureBattrIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

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

.method private clearApi()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearBattr()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    return-void
.end method

.method private clearRequest()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearRequestNative()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private clearRequestOneof()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private clearVer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->getVer()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureBattrIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

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
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeRequestNative(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 5
    .line 6
    const/16 v1, 0x32

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$b;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 42
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

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

.method private setApi(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureApiIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->getNumber()I

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

.method private setBattr(ILcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ensureBattrIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->getNumber()I

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

.method private setRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method private setRequestBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setRequestNative(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 p1, 0x32

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setVer(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setVerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

    .line 6
    .line 7
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object p3, Lcom/moloco/sdk/a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p3, p1

    .line 8
    .line 9
    const/4 p3, 0x0

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
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    int-to-byte p1, p1

    .line 25
    iput-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->memoizedIsInitialized:B

    .line 26
    .line 27
    return-object p3

    .line 28
    :pswitch_1
    iget-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->memoizedIsInitialized:B

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->PARSER:Lcom/google/protobuf/Parser;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-class p2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->PARSER:Lcom/google/protobuf/Parser;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 47
    .line 48
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->PARSER:Lcom/google/protobuf/Parser;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    monitor-exit p2

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1

    .line 62
    :cond_2
    :goto_3
    return-object p1

    .line 63
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_4
    const-string v0, "requestOneof_"

    .line 67
    .line 68
    const-string v1, "requestOneofCase_"

    .line 69
    .line 70
    const-string v2, "bitField0_"

    .line 71
    .line 72
    const-string/jumbo v3, "ver_"

    .line 73
    .line 74
    .line 75
    const-string v4, "api_"

    .line 76
    .line 77
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, "battr_"

    .line 82
    .line 83
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-class v8, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 88
    .line 89
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "\u0001\u0005\u0001\u0001\u00012\u0005\u0000\u0002\u0001\u0001\u103b\u0000\u0002\u1008\u0002\u0003,\u0004,2\u143c\u0000"

    .line 94
    .line 95
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 96
    .line 97
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;

    .line 103
    .line 104
    invoke-direct {p1, p3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$c;-><init>(Lcom/moloco/sdk/b;)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;

    .line 109
    .line 110
    invoke-direct {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;-><init>()V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    nop

    .line 115
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

.method public getApi(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getApiCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

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

.method public getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->api_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getBattr(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;->AUDIO_AUTO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getBattrCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

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

.method public getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_:Lcom/google/protobuf/Internal$IntList;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->battr_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getRequest()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public getRequestBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getRequestNative()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneof_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getRequestOneofCase()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->ver_:Ljava/lang/String;

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

.method public hasRequest()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

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

.method public hasRequestNative()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->requestOneofCase_:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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

.method public hasVer()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;->bitField0_:I

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
