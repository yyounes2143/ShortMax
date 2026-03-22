.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BidRequest.java"

# interfaces
.implements Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;",
        ">;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$a;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IMG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field public static final VIDEO_FIELD_NUMBER:I = 0x5


# instance fields
.field private assetOneofCase_:I

.field private assetOneof_:Ljava/lang/Object;

.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private required_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

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
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->memoizedIsInitialized:B

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearAssetOneof()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private clearData()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->id_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearImg()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearRequired()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->required_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearTitle()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearVideo()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeData(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 41
    .line 42
    return-void
.end method

.method private mergeImg(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 41
    .line 42
    return-void
.end method

.method private mergeTitle(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 41
    .line 42
    return-void
.end method

.method private mergeVideo(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$g;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$g;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 41
    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

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

.method private setData(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setId(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->id_:I

    .line 8
    .line 9
    return-void
.end method

.method private setImg(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setRequired(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->required_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setTitle(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setVideo(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 8
    .line 9
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
    iput-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->memoizedIsInitialized:B

    .line 26
    .line 27
    return-object p3

    .line 28
    :pswitch_1
    iget-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->memoizedIsInitialized:B

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
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->PARSER:Lcom/google/protobuf/Parser;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-class p2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->PARSER:Lcom/google/protobuf/Parser;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 47
    .line 48
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_4
    const-string v0, "assetOneof_"

    .line 67
    .line 68
    const-string v1, "assetOneofCase_"

    .line 69
    .line 70
    const-string v2, "bitField0_"

    .line 71
    .line 72
    const-string v3, "id_"

    .line 73
    .line 74
    const-string v4, "required_"

    .line 75
    .line 76
    const-class v5, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;

    .line 77
    .line 78
    const-class v6, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;

    .line 79
    .line 80
    const-class v7, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;

    .line 81
    .line 82
    const-class v8, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;

    .line 83
    .line 84
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0005\u0001\u1504\u0000\u0002\u1007\u0001\u0003\u143c\u0000\u0004\u143c\u0000\u0005\u143c\u0000\u0006\u143c\u0000"

    .line 89
    .line 90
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 91
    .line 92
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;

    .line 98
    .line 99
    invoke-direct {p1, p3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$a;-><init>(Lcom/moloco/sdk/b;)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;

    .line 104
    .line 105
    invoke-direct {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;-><init>()V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
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

.method public getAssetOneofCase()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getData()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Data;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->id_:I

    .line 2
    .line 3
    return v0
.end method

.method public getImg()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Image;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->required_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$Title;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getVideo()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x6

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

.method public hasId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

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

.method public hasImg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

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

.method public hasRequired()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

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

.method public hasVideo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;->assetOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x5

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
