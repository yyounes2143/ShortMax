.class public final Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "CreativeExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/CreativeExtension$PostbannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Postbanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

.field public static final FEATURES_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2

.field public static final TPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

.field private features_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private sequence_:I

.field private tpe_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x22

    if-eq v3, v5, :cond_2

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    move v2, v4

    .line 15
    :cond_3
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Feature;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    iget-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    iput-object v4, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;

    .line 22
    invoke-virtual {v3}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    goto :goto_0

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v3

    .line 25
    iput v3, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :goto_2
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 28
    :goto_3
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v2, :cond_8

    .line 29
    iget-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 30
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 31
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 32
    throw p1

    :cond_9
    if-eqz v2, :cond_a

    .line 33
    iget-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/CreativeExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$6400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$6600(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$6602(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6702(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6802(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;)Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6900(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$6902(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$7000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$7100(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$7200()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

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
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 15
    .line 16
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 17
    .line 18
    iget v2, p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    return v3

    .line 35
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    return v3

    .line 46
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_5

    .line 65
    .line 66
    return v3

    .line 67
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    return v3

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_7

    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    return v0
.end method

.method public getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAssetOrBuilder()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearanceOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    return-object v0
.end method

.method public getFeatures(I)Lio/bidmachine/protobuf/CreativeExtension$Feature;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$Feature;

    .line 8
    .line 9
    return-object p1
.end method

.method public getFeaturesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

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

.method public getFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/CreativeExtension$Feature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getFeaturesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/CreativeExtension$FeatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/CreativeExtension$Postbanner;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 8
    .line 9
    sget-object v1, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/bidmachine/protobuf/PostbannerType;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v2

    .line 27
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v2, v1, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 84
    .line 85
    return v0
.end method

.method public getTpe()Lio/bidmachine/protobuf/PostbannerType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/PostbannerType;->valueOf(I)Lio/bidmachine/protobuf/PostbannerType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTpeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 2
    .line 3
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

.method public hasAsset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

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
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x25

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x35

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getSequence()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->hasAsset()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    mul-int/lit8 v1, v1, 0x25

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    mul-int/lit8 v1, v1, 0x35

    .line 69
    .line 70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getFeaturesList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v1, v0

    .line 79
    :cond_2
    mul-int/lit8 v1, v1, 0x1d

    .line 80
    .line 81
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 89
    .line 90
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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
    iget-byte v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->newBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/CreativeExtension$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/CreativeExtension$Postbanner;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;-><init>(Lio/bidmachine/protobuf/CreativeExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension$Postbanner;)Lio/bidmachine/protobuf/CreativeExtension$Postbanner$Builder;

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
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/protobuf/PostbannerType;->getNumber()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->tpe_:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->sequence_:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->asset_:Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->getAsset()Lio/bidmachine/protobuf/CreativeExtension$AssetAppearance;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lio/bidmachine/protobuf/CreativeExtension$Postbanner;->features_:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
