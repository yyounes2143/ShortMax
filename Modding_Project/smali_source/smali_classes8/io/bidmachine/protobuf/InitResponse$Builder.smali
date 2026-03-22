.class public final Lio/bidmachine/protobuf/InitResponse$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "InitResponse.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/InitResponse$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksBuilder_:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksLoadingTimeout_:I

.field private adNetworks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private adRequestTmax_:I

.field private bitField0_:I

.field private endpoint_:Ljava/lang/Object;

.field private eventBuilder_:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private extrasBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/Extras;",
            "Lio/bidmachine/protobuf/Extras$Builder;",
            "Lio/bidmachine/protobuf/ExtrasOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extras_:Lio/bidmachine/protobuf/Extras;

.field private sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Configuration;",
            "Lio/bidmachine/protobuf/sdk/Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

.field private sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field private sessionResetAfter_:I

.field private showWithoutInternet_:Z

.field private tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tokenConfigurations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 16
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/InitResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/InitResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureAdNetworksIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureTokenConfigurationsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getEventConfigurationFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 34
    .line 35
    return-object v0
.end method

.method private getExtrasFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/Extras;",
            "Lio/bidmachine/protobuf/Extras$Builder;",
            "Lio/bidmachine/protobuf/ExtrasOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getExtras()Lio/bidmachine/protobuf/Extras;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSdkAnalyticConfigV2FieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Configuration;",
            "Lio/bidmachine/protobuf/sdk/Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method

.method private internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

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

.method private internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->f()Lcom/explorestack/protobuf/MapField;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 33
    .line 34
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 15
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addAdNetworksBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->c(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public addAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/p1;->b(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public addAllAdNetworks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addAllEvent(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addAllTokenConfigurations(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 15
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->c(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/p1;->b(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public addTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addTokenConfigurations(Lio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 15
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addTokenConfigurations(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addTokenConfigurationsBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->c(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object v0
.end method

.method public addTokenConfigurationsBuilder(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/p1;->b(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitResponse;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/InitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/InitResponse$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$402(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_1

    .line 6
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 8
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 9
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$602(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 12
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_3

    .line 13
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 15
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 16
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 18
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$802(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 19
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$902(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 20
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1002(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 21
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1102(Lio/bidmachine/protobuf/InitResponse;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 22
    invoke-static {v0}, Lio/bidmachine/protobuf/InitResponse;->access$1100(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->n()V

    .line 23
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1202(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 24
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_4

    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 27
    :goto_2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_5

    .line 28
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1402(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_3

    .line 29
    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1402(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 30
    :goto_3
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_7

    .line 31
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 33
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 34
    :cond_6
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 35
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 36
    :goto_4
    iget-boolean v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1602(Lio/bidmachine/protobuf/InitResponse;Z)Z

    .line 37
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_8

    .line 38
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1702(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras;

    goto :goto_5

    .line 39
    :cond_8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/Extras;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1702(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras;

    .line 40
    :goto_5
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_9

    .line 41
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1802(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration;

    goto :goto_6

    .line 42
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1802(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration;

    .line 43
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 9
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    :goto_0
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 12
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 14
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->g()V

    .line 16
    :goto_1
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 17
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 18
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 19
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->a()V

    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 21
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 22
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_2

    .line 23
    :cond_2
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 24
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 25
    :goto_2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_3

    .line 26
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_3

    .line 27
    :cond_3
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 28
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 29
    :goto_3
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_4

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 31
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_4

    .line 32
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->g()V

    .line 33
    :goto_4
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 34
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_5

    .line 35
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    goto :goto_5

    .line 36
    :cond_5
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 37
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 38
    :goto_5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_6

    .line 39
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    goto :goto_6

    .line 40
    :cond_6
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 41
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    :goto_6
    return-object p0
.end method

.method public clearAdCacheControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAdCacheMaxAge()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAdCachePlacementControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public clearAdNetworks()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearAdNetworksLoadingTimeout()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAdRequestTmax()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearEndpoint()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearEvent()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearEventConfiguration()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearExtras()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public clearSdkAnalyticConfig()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSdkAnalyticConfigV2()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSessionResetAfter()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearShowWithoutInternet()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTokenConfigurations()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x9

    .line 14
    .line 15
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitResponse$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsAdCachePlacementControl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdCacheMaxAge()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdCachePlacementControl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdCachePlacementControlMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAdCachePlacementControlCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public getAdCachePlacementControlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public getAdCachePlacementControlOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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
    check-cast p2, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 24
    .line 25
    :cond_0
    return-object p2
.end method

.method public getAdCachePlacementControlOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

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

.method public getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->k(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getAdNetworksBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAdNetworksCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getAdNetworksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->p()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdNetworksLoadingTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->q(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAdNetworksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdRequestTmax()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

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

.method public getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

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

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 19
    .line 20
    return-object p1
.end method

.method public getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->k(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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
    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 19
    .line 20
    return-object v0
.end method

.method public getEventConfigurationBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventConfigurationFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->p()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->q(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getExtras()Lio/bidmachine/protobuf/Extras;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

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
    check-cast v0, Lio/bidmachine/protobuf/Extras;

    .line 19
    .line 20
    return-object v0
.end method

.method public getExtrasBuilder()Lio/bidmachine/protobuf/Extras$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getExtrasFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/Extras$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getExtrasOrBuilder()Lio/bidmachine/protobuf/ExtrasOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/ExtrasOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMutableAdCachePlacementControl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

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
    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSdkAnalyticConfigBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getSdkAnalyticConfigOrBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Configuration;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Configuration;

    .line 19
    .line 20
    return-object v0
.end method

.method public getSdkAnalyticConfigV2Builder()Lio/bidmachine/protobuf/sdk/Configuration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigV2FieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getSdkAnalyticConfigV2OrBuilder()Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Configuration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSessionResetAfter()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowWithoutInternet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTokenConfigurations(I)Lio/bidmachine/protobuf/TokenConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTokenConfigurationsBuilder(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->k(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getTokenConfigurationsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTokenConfigurationsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getTokenConfigurationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->p()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getTokenConfigurationsOrBuilder(I)Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->q(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getTokenConfigurationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public hasEventConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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

.method public hasExtras()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

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

.method public hasSdkAnalyticConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

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

.method public hasSdkAnalyticConfigV2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

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
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/InitResponse;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/InitResponse$Builder;

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
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Invalid map field number: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Invalid map field number: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilder(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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

.method public mergeExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/Extras;->newBuilder(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/InitResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/InitResponse$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/InitResponse;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2400()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
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

    .line 94
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 95
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$400(Lio/bidmachine/protobuf/InitResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 18
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_2

    .line 22
    :cond_3
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 25
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 26
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 27
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 28
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    goto :goto_2

    .line 30
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 31
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 33
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_9

    .line 34
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 35
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 37
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_3

    .line 38
    :cond_8
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 39
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_5

    .line 41
    :cond_9
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 42
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 44
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 45
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 46
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 47
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    goto :goto_5

    .line 49
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 50
    :cond_c
    :goto_5
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$800(Lio/bidmachine/protobuf/InitResponse;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheControlValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 52
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 54
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 56
    :cond_f
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2100(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/MapField;->o(Lcom/explorestack/protobuf/MapField;)V

    .line 59
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 61
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 63
    :cond_11
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 64
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 65
    :cond_12
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_14

    .line 66
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 67
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 68
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 69
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 70
    :cond_13
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 71
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_7

    .line 73
    :cond_14
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 74
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 75
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 76
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 77
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 78
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 79
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 80
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v1

    :cond_15
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    goto :goto_7

    .line 81
    :cond_16
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 82
    :cond_17
    :goto_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setShowWithoutInternet(Z)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 84
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 86
    :cond_19
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 87
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 88
    :cond_1a
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2300(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

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

.method public mergeSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->newBuilder(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public putAdCachePlacementControl(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public putAllAdCachePlacementControl(Ljava/util/Map;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public removeAdCachePlacementControl(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

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

.method public removeAdNetworks(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->v(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public removeEvent(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->v(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public removeTokenConfigurations(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->v(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setAdCacheControl(Lio/bidmachine/protobuf/AdCacheControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setEndpointBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setExtras(Lio/bidmachine/protobuf/Extras$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setShowWithoutInternet(Z)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method
