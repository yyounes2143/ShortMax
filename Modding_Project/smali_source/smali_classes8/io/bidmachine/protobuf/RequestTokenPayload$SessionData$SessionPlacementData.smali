.class public final Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionPlacementData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    }
.end annotation


# static fields
.field public static final CLICKRATE_FIELD_NUMBER:I = 0x5

.field public static final COMPLETIONRATE_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

.field public static final IMPDEPTH_FIELD_NUMBER:I = 0x1

.field public static final LASTADOMAIN_FIELD_NUMBER:I = 0x4

.field public static final LASTBUNDLE_FIELD_NUMBER:I = 0x3

.field public static final LASTCLICK_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private clickrate_:F

.field private completionrate_:F

.field private impdepth_:I

.field private volatile lastadomain_:Ljava/lang/Object;

.field private volatile lastbundle_:Ljava/lang/Object;

.field private lastclick_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x22

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_4

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_2

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->completionrate_:F

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastclick_:Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->clickrate_:F

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v2

    .line 20
    iput-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->impdepth_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 23
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 24
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 27
    throw p1

    .line 28
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->impdepth_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->clickrate_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastclick_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->completionrate_:F

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getImpdepth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getImpdepth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomain()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomain()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return v3

    .line 58
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getClickrate()F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getClickrate()F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eq v1, v2, :cond_5

    .line 75
    .line 76
    return v3

    .line 77
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastclick()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastclick()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eq v1, v2, :cond_6

    .line 86
    .line 87
    return v3

    .line 88
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getCompletionrate()F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getCompletionrate()F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eq v1, v2, :cond_7

    .line 105
    .line 106
    return v3

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    return v3

    .line 118
    :cond_8
    return v0
.end method

.method public getClickrate()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->clickrate_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCompletionrate()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->completionrate_:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    return-object v0
.end method

.method public getImpdepth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->impdepth_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastadomain()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastadomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastbundle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastbundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastclick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastclick_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->impdepth_:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomainBytes()Lcom/explorestack/protobuf/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    iget-object v2, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->clickrate_:F

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    cmpl-float v3, v1, v2

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v0, v1

    .line 67
    :cond_4
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastclick_:Z

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    const/4 v3, 0x6

    .line 72
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->completionrate_:F

    .line 78
    .line 79
    cmpl-float v2, v1, v2

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x7

    .line 84
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/2addr v0, v1

    .line 96
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 97
    .line 98
    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getImpdepth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x25

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x35

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x4

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomain()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x25

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x5

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getClickrate()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x25

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x6

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x35

    .line 78
    .line 79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastclick()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x25

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x7

    .line 91
    .line 92
    mul-int/lit8 v1, v1, 0x35

    .line 93
    .line 94
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getCompletionrate()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    mul-int/lit8 v1, v1, 0x1d

    .line 104
    .line 105
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/2addr v1, v0

    .line 112
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 113
    .line 114
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->impdepth_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundleBytes()Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastbundle_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomainBytes()Lcom/explorestack/protobuf/ByteString;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastadomain_:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->clickrate_:F

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    cmpl-float v2, v0, v1

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->lastclick_:Z

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->completionrate_:F

    .line 61
    .line 62
    cmpl-float v1, v0, v1

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    const/4 v1, 0x7

    .line 67
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
