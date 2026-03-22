.class public final Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;"
    }
.end annotation


# instance fields
.field private appVer_:Ljava/lang/Object;

.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private contype_:I

.field private dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private experiments_:Lcom/explorestack/protobuf/n0;

.field private extBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/x1;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geoBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private hwv_:Ljava/lang/Object;

.field private ifa_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private make_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private sourceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 14
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 24
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 27
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 33
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 34
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 35
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 39
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>()V

    return-void
.end method

.method private ensureExperimentsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/m0;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/m0;-><init>(Lcom/explorestack/protobuf/n0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/x1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getGeoFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addAllExperiments(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addExperiments(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public addExperimentsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->b(Lcom/explorestack/protobuf/ByteString;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 11
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 17
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 18
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 24
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 26
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 27
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2002(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;

    .line 28
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 11
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 12
    :cond_0
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 13
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 14
    :goto_0
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 19
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 20
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 25
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 26
    :cond_1
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 27
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    :goto_1
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 29
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBundle()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearContype()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearDcid()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearDeviceType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearExperiments()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearGeo()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearHwv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearIfa()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearMake()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearModel()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearOs()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearOsv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearSdk()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearSourceId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

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

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

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

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

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

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getContypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getExperiments(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExperimentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getExperimentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

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

.method public getExperimentsList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExperimentsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExperimentsList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/Struct;

    .line 19
    .line 20
    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/x1;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

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

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

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

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

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

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

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

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

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

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getOsValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2
    .line 3
    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

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

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

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

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

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

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

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

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

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

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2500()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 77
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 22
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 24
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 30
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 33
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 36
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 39
    :cond_a
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDeviceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 41
    :cond_b
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 43
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 46
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 49
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 52
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 54
    :cond_10
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 55
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 57
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    goto :goto_0

    .line 58
    :cond_11
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 59
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/n0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 61
    :cond_12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 62
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 64
    :cond_13
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 67
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 68
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 70
    :cond_15
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDcid(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setDcidBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setExperiments(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setHwv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setHwvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$4000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3200(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setMakeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3800(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setModelBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setSourceIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method
