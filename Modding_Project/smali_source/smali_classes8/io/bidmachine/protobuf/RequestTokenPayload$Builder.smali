.class public final Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private adType_:Ljava/lang/Object;

.field private appDataBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/App;",
            "Lio/bidmachine/protobuf/sdk/App$Builder;",
            "Lio/bidmachine/protobuf/sdk/AppOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private appData_:Lio/bidmachine/protobuf/sdk/App;

.field private bitField0_:I

.field private customData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceDataBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;",
            "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceData_:Lio/bidmachine/protobuf/sdk/Device;

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

.field private hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

.field private placementBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Placement;",
            "Lio/bidmachine/protobuf/sdk/Placement$Builder;",
            "Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private placementDataBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            "Lio/bidmachine/protobuf/sdk/SDK$Builder;",
            "Lio/bidmachine/protobuf/sdk/SDKOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private placementData_:Lio/bidmachine/protobuf/sdk/SDK;

.field private placement_:Lio/bidmachine/protobuf/sdk/Placement;

.field private sessionBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            "Lio/bidmachine/protobuf/sdk/Session$Builder;",
            "Lio/bidmachine/protobuf/sdk/SessionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sessionDataBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

.field private session_:Lio/bidmachine/protobuf/sdk/Session;

.field private tokenHashValue_:Ljava/lang/Object;

.field private userDataBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/User;",
            "Lio/bidmachine/protobuf/sdk/User$Builder;",
            "Lio/bidmachine/protobuf/sdk/UserOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userData_:Lio/bidmachine/protobuf/sdk/User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;-><init>()V

    return-void
.end method

.method private getAppDataFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/App;",
            "Lio/bidmachine/protobuf/sdk/App$Builder;",
            "Lio/bidmachine/protobuf/sdk/AppOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getAppData()Lio/bidmachine/protobuf/sdk/App;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getDeviceDataFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;",
            "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDeviceData()Lio/bidmachine/protobuf/sdk/Device;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
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
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getHbPlacementFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPlacementDataFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            "Lio/bidmachine/protobuf/sdk/SDK$Builder;",
            "Lio/bidmachine/protobuf/sdk/SDKOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementData()Lio/bidmachine/protobuf/sdk/SDK;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPlacementFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Placement;",
            "Lio/bidmachine/protobuf/sdk/Placement$Builder;",
            "Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacement()Lio/bidmachine/protobuf/sdk/Placement;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSessionDataFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;",
            "Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSessionFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            "Lio/bidmachine/protobuf/sdk/Session$Builder;",
            "Lio/bidmachine/protobuf/sdk/SessionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSession()Lio/bidmachine/protobuf/sdk/Session;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getUserDataFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/User;",
            "Lio/bidmachine/protobuf/sdk/User$Builder;",
            "Lio/bidmachine/protobuf/sdk/UserOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getUserData()Lio/bidmachine/protobuf/sdk/User;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private internalGetCustomData()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$CustomDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->g(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/protobuf/RequestTokenPayload$CustomDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->m()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->f()Lcom/explorestack/protobuf/MapField;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->customData_:Lcom/explorestack/protobuf/MapField;

    .line 33
    .line 34
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$2900()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3102(Lio/bidmachine/protobuf/RequestTokenPayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3202(Lio/bidmachine/protobuf/RequestTokenPayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3302(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/SDK;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3302(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK;

    .line 9
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3402(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3402(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 12
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3502(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Session;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3502(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session;

    .line 15
    :goto_2
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3602(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device;

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Device;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3602(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device;

    .line 18
    :goto_3
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3702(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User;

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/User;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3702(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User;

    .line 21
    :goto_4
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_5

    .line 22
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3802(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App;

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/App;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3802(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App;

    .line 24
    :goto_5
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_6

    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3902(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3902(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 27
    :goto_6
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4002(Lio/bidmachine/protobuf/RequestTokenPayload;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 28
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4000(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->n()V

    .line 29
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_7

    .line 30
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4102(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement;

    goto :goto_7

    .line 31
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4102(Lio/bidmachine/protobuf/RequestTokenPayload;Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement;

    .line 32
    :goto_7
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_8

    .line 33
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4202(Lio/bidmachine/protobuf/RequestTokenPayload;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_8

    .line 34
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4202(Lio/bidmachine/protobuf/RequestTokenPayload;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 35
    :goto_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 11
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 12
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_1

    .line 13
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    goto :goto_1

    .line 14
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 15
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 16
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_2

    .line 17
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_2

    .line 18
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 19
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 20
    :goto_2
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_3

    .line 21
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    goto :goto_3

    .line 22
    :cond_3
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 23
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 24
    :goto_3
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_4

    .line 25
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    goto :goto_4

    .line 26
    :cond_4
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 27
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    :goto_4
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_5

    .line 29
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    goto :goto_5

    .line 30
    :cond_5
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 31
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 32
    :goto_5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_6

    .line 33
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    goto :goto_6

    .line 34
    :cond_6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 35
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 36
    :goto_6
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->a()V

    .line 37
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_7

    .line 38
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    goto :goto_7

    .line 39
    :cond_7
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 40
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 41
    :goto_7
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_8

    .line 42
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_8

    .line 43
    :cond_8
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 44
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    :goto_8
    return-object p0
.end method

.method public clearAdType()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->getAdType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearAppData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearCustomData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public clearDeviceData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public clearHbPlacement()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public clearPlacement()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearPlacementData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSession()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearTokenHashValue()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload;->getTokenHashValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearUserData()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomData(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

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

.method public getAdTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

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

.method public getAppData()Lio/bidmachine/protobuf/sdk/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/App;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAppDataBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getAppDataFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAppDataOrBuilder()Lio/bidmachine/protobuf/sdk/AppOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/AppOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getCustomDataMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCustomDataCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getCustomDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCustomDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-object p2
.end method

.method public getCustomDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceData()Lio/bidmachine/protobuf/sdk/Device;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Device;

    .line 19
    .line 20
    return-object v0
.end method

.method public getDeviceDataBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getDeviceDataFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDeviceDataOrBuilder()Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

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
    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 19
    .line 20
    return-object v0
.end method

.method public getHbPlacementBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getHbPlacementFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getHbPlacementOrBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMutableCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPlacement()Lio/bidmachine/protobuf/sdk/Placement;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Placement;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPlacementBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPlacementData()Lio/bidmachine/protobuf/sdk/SDK;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/SDK;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPlacementDataBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementDataFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPlacementDataOrBuilder()Lio/bidmachine/protobuf/sdk/SDKOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/SDKOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPlacementOrBuilder()Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/PlacementOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Placement;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSession()Lio/bidmachine/protobuf/sdk/Session;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Session;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSessionBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSessionFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

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
    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSessionDataBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getSessionDataFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getSessionDataOrBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionDataOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSessionOrBuilder()Lio/bidmachine/protobuf/sdk/SessionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/SessionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getTokenHashValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

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

.method public getTokenHashValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

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

.method public getUserData()Lio/bidmachine/protobuf/sdk/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/User;

    .line 19
    .line 20
    return-object v0
.end method

.method public getUserDataBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getUserDataFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getUserDataOrBuilder()Lio/bidmachine/protobuf/sdk/UserOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/UserOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasAppData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

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

.method public hasDeviceData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

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

.method public hasExt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasHbPlacement()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

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

.method public hasPlacement()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

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

.method public hasPlacementData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

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

.method public hasSession()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

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

.method public hasSessionData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

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

.method public hasUserData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

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
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Invalid map field number: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Invalid map field number: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeAppData(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/App;->newBuilder(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

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

.method public mergeDeviceData(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

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

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4500()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
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

    .line 44
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 45
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getTokenHashValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3100(Lio/bidmachine/protobuf/RequestTokenPayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$3200(Lio/bidmachine/protobuf/RequestTokenPayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasPlacementData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getPlacementData()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergePlacementData(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasSessionData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getSessionData()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasDeviceData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getDeviceData()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeDeviceData(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 25
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasUserData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getUserData()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUserData(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasAppData()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getAppData()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeAppData(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasHbPlacement()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getHbPlacement()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 31
    :cond_9
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4300(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->o(Lcom/explorestack/protobuf/MapField;)V

    .line 34
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasPlacement()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getPlacement()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergePlacement(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 36
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 38
    :cond_b
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4400(Lio/bidmachine/protobuf/RequestTokenPayload;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

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

.method public mergePlacement(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilder(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Placement;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

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

.method public mergePlacementData(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilder(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

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

.method public mergeSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Session;->newBuilder(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

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

.method public mergeSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;->newBuilder(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public mergeUserData(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/User;->newBuilder(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

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

.method public putAllCustomData(Ljava/util/Map;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestTokenPayload$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public removeCustomData(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->internalGetMutableCustomData()Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAdTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->adType_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setAppData(Lio/bidmachine/protobuf/sdk/App$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setAppData(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->appData_:Lio/bidmachine/protobuf/sdk/App;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setDeviceData(Lio/bidmachine/protobuf/sdk/Device$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setDeviceData(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->deviceData_:Lio/bidmachine/protobuf/sdk/Device;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->extBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->hbPlacement_:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setPlacement(Lio/bidmachine/protobuf/sdk/Placement$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setPlacement(Lio/bidmachine/protobuf/sdk/Placement;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placement_:Lio/bidmachine/protobuf/sdk/Placement;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setPlacementData(Lio/bidmachine/protobuf/sdk/SDK$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setPlacementData(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->placementData_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setSession(Lio/bidmachine/protobuf/sdk/Session$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSessionData(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->sessionData_:Lio/bidmachine/protobuf/RequestTokenPayload$SessionData;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setTokenHashValue(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTokenHashValueBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload;->access$4600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->tokenHashValue_:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    return-object p1
.end method

.method public setUserData(Lio/bidmachine/protobuf/sdk/User$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setUserData(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userDataBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->userData_:Lio/bidmachine/protobuf/sdk/User;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method
