.class public final Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BidToken.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImpCounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final BANNER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

.field public static final INTERSTITIAL_FIELD_NUMBER:I = 0x1

.field public static final MREC_FIELD_NUMBER:I = 0x3

.field public static final NATIVE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARDED_FIELD_NUMBER:I = 0x2


# instance fields
.field private banner_:I

.field private interstitial_:I

.field private mrec_:I

.field private native_:I

.field private rewarded_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

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

.method static bridge synthetic a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->setBanner(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->setInterstitial(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->setMrec(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearBanner()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->banner_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearInterstitial()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->interstitial_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearMrec()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->mrec_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearNative()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->native_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearRewarded()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->rewarded_:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->setNative(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->setRewarded(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

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

.method private setBanner(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->banner_:I

    .line 2
    .line 3
    return-void
.end method

.method private setInterstitial(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->interstitial_:I

    .line 2
    .line 3
    return-void
.end method

.method private setMrec(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->mrec_:I

    .line 2
    .line 3
    return-void
.end method

.method private setNative(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->native_:I

    .line 2
    .line 3
    return-void
.end method

.method private setRewarded(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->rewarded_:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Lcom/moloco/sdk/c;->a:[I

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
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "interstitial_"

    .line 58
    .line 59
    const-string p2, "rewarded_"

    .line 60
    .line 61
    const-string p3, "mrec_"

    .line 62
    .line 63
    const-string v0, "banner_"

    .line 64
    .line 65
    const-string v1, "native_"

    .line 66
    .line 67
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004"

    .line 72
    .line 73
    sget-object p3, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

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
    new-instance p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts$a;-><init>(Lcom/moloco/sdk/d;)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;-><init>()V

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

.method public getBanner()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->banner_:I

    .line 2
    .line 3
    return v0
.end method

.method public getInterstitial()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->interstitial_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMrec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->mrec_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNative()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->native_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRewarded()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$ImpLvlRevData$ImpCounts;->rewarded_:I

    .line 2
    .line 3
    return v0
.end method
