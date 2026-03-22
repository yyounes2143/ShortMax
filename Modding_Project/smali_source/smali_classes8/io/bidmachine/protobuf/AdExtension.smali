.class public final Lio/bidmachine/protobuf/AdExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$Builder;,
        Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/AdExtension$EventConfiguration;,
        Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;,
        Lio/bidmachine/protobuf/AdExtension$ControlAsset;,
        Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    }
.end annotation


# static fields
.field public static final AD_CACHE_CONTROL_FIELD_NUMBER:I = 0x15

.field public static final AD_CACHE_MAX_AGE_FIELD_NUMBER:I = 0x16

.field public static final AD_FLEXIBLE_SIZE_FIELD_NUMBER:I = 0x20

.field public static final AD_MARKUP_LOADING_TIMEOUT_FIELD_NUMBER:I = 0x18

.field public static final CLOSE_BUTTON_FIELD_NUMBER:I = 0xf

.field public static final COMPANION_SKIPOFFSET_FIELD_NUMBER:I = 0xa

.field public static final COUNTDOWN_FIELD_NUMBER:I = 0xe

.field public static final CREATIVE_EXTENSION_FIELD_NUMBER:I = 0x1f

.field public static final CREATIVE_LOADING_METHOD_FIELD_NUMBER:I = 0x1b

.field public static final CREATIVE_LOADING_TIMEOUT_FIELD_NUMBER:I = 0x23

.field public static final CRID_MONITORING_ENABLED_FIELD_NUMBER:I = 0x24

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

.field public static final EVENT_CONFIGURATION_FIELD_NUMBER:I = 0x1d

.field public static final EVENT_FIELD_NUMBER:I = 0x7

.field public static final IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER:I = 0x10

.field public static final LOAD_SKIPOFFSET_FIELD_NUMBER:I = 0x3

.field public static final MRAID_CREATIVE_VALIDATION_REQUIRED_FIELD_NUMBER:I = 0x22

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEHOLDER_TIMEOUT_FIELD_NUMBER:I = 0x1c

.field public static final PRELOAD_AD_FIELD_NUMBER:I = 0x1a

.field public static final PRELOAD_FIELD_NUMBER:I = 0x2

.field public static final PROGRESS_DURATION_FIELD_NUMBER:I = 0x13

.field public static final PROGRESS_FIELD_NUMBER:I = 0x12

.field public static final R1_DELAY_FIELD_NUMBER:I = 0x17

.field public static final R1_FIELD_NUMBER:I = 0xc

.field public static final R2_FIELD_NUMBER:I = 0xd

.field public static final RENDERING_CONFIGURATION_FIELD_NUMBER:I = 0x21

.field public static final SKIPOFFSET_FIELD_NUMBER:I = 0x9

.field public static final STORE_URL_FIELD_NUMBER:I = 0x11

.field public static final USE_EMBEDDED_BROWSER_FIELD_NUMBER:I = 0x19

.field public static final USE_NATIVE_CLOSE_FIELD_NUMBER:I = 0xb

.field public static final VIEWABILITY_DURATION_THRESHOLD_FIELD_NUMBER:I = 0x6

.field public static final VIEWABILITY_IGNORE_OVERLAP_FIELD_NUMBER:I = 0x1e

.field public static final VIEWABILITY_IGNORE_WINDOW_FOCUS_FIELD_NUMBER:I = 0x14

.field public static final VIEWABILITY_PIXEL_THRESHOLD_FIELD_NUMBER:I = 0x5

.field public static final VIEWABILITY_TIME_THRESHOLD_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adFlexibleSize_:Z

.field private adMarkupLoadingTimeout_:I

.field private closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private companionSkipoffset_:I

.field private countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

.field private creativeLoadingMethod_:I

.field private creativeLoadingTimeout_:I

.field private cridMonitoringEnabled_:Z

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

.field private ignoresSafeAreaLayoutGuide_:Z

.field private loadSkipoffset_:I

.field private memoizedIsInitialized:B

.field private mraidCreativeValidationRequired_:Z

.field private placeholderTimeout_:F

.field private preloadAd_:Z

.field private preload_:Z

.field private progressDuration_:I

.field private progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private r1Delay_:I

.field private r1_:Z

.field private r2_:Z

.field private renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

.field private skipoffset_:I

.field private volatile storeUrl_:Ljava/lang/Object;

.field private useEmbeddedBrowser_:Z

.field private useNativeClose_:Z

.field private viewabilityDurationThreshold_:F

.field private viewabilityIgnoreOverlap_:Z

.field private viewabilityIgnoreWindowFocus_:Z

.field private viewabilityPixelThreshold_:F

.field private viewabilityTimeThreshold_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

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
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 10
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

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
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_a

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v4

    if-nez v4, :cond_0

    :sswitch_0
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 16
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    goto :goto_0

    .line 17
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->y()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    goto :goto_0

    .line 18
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    goto :goto_0

    .line 19
    :sswitch_4
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {v4}, Lio/bidmachine/protobuf/rendering/Rendering;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    move-result-object v5

    .line 21
    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/rendering/Rendering;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    .line 23
    invoke-virtual {v5}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_0

    .line 24
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    goto :goto_0

    .line 25
    :sswitch_6
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v5

    .line 27
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/CreativeExtension;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 29
    invoke-virtual {v5}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    goto :goto_0

    .line 30
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    goto :goto_0

    .line 31
    :sswitch_8
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v4, :cond_3

    .line 32
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v5

    .line 33
    :cond_3
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 35
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto/16 :goto_0

    .line 36
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    goto/16 :goto_0

    .line 37
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 38
    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    goto/16 :goto_0

    .line 39
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    goto/16 :goto_0

    .line 40
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    goto/16 :goto_0

    .line 41
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    goto/16 :goto_0

    .line 42
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    goto/16 :goto_0

    .line 43
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    goto/16 :goto_0

    .line 44
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->t()I

    move-result v4

    .line 45
    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    goto/16 :goto_0

    .line 46
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    goto/16 :goto_0

    .line 47
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    goto/16 :goto_0

    .line 48
    :sswitch_13
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_4

    .line 49
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 50
    :cond_4
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 52
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_0

    .line 53
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v4

    .line 54
    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    goto/16 :goto_0

    .line 56
    :sswitch_16
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_5

    .line 57
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 58
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 60
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_0

    .line 61
    :sswitch_17
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_6

    .line 62
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 63
    :cond_6
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 65
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_0

    .line 66
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    goto/16 :goto_0

    .line 67
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    goto/16 :goto_0

    .line 68
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    goto/16 :goto_0

    .line 69
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    goto/16 :goto_0

    .line 70
    :sswitch_1c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    goto/16 :goto_0

    :sswitch_1d
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_7

    .line 71
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x2

    .line 72
    :cond_7
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 73
    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->getParserForType()Lcom/explorestack/protobuf/j1;

    move-result-object v4

    .line 74
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/s0;

    .line 75
    iget-object v5, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    move-result-object v5

    .line 76
    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->h()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->j()Ljava/lang/Object;

    move-result-object v4

    .line 77
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_1e
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 79
    :cond_8
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 80
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 81
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 82
    :sswitch_1f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    goto/16 :goto_0

    .line 83
    :sswitch_20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    goto/16 :goto_0

    .line 84
    :sswitch_21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    goto/16 :goto_0

    .line 85
    :sswitch_22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    goto/16 :goto_0

    .line 86
    :sswitch_23
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 87
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 88
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 89
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 90
    iget-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 91
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 93
    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_b

    .line 94
    iget-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 95
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 96
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_23
        0x18 -> :sswitch_22
        0x20 -> :sswitch_21
        0x2d -> :sswitch_20
        0x35 -> :sswitch_1f
        0x3a -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x48 -> :sswitch_1c
        0x50 -> :sswitch_1b
        0x58 -> :sswitch_1a
        0x60 -> :sswitch_19
        0x68 -> :sswitch_18
        0x72 -> :sswitch_17
        0x7a -> :sswitch_16
        0x80 -> :sswitch_15
        0x8a -> :sswitch_14
        0x92 -> :sswitch_13
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_11
        0xa8 -> :sswitch_10
        0xb0 -> :sswitch_f
        0xb8 -> :sswitch_e
        0xc0 -> :sswitch_d
        0xc8 -> :sswitch_c
        0xd0 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xe5 -> :sswitch_9
        0xea -> :sswitch_8
        0xf0 -> :sswitch_7
        0xfa -> :sswitch_6
        0x100 -> :sswitch_5
        0x10a -> :sswitch_4
        0x110 -> :sswitch_3
        0x118 -> :sswitch_2
        0x120 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$5100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$5302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5402(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5502(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5602(Lio/bidmachine/protobuf/AdExtension;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5702(Lio/bidmachine/protobuf/AdExtension;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5802(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$5900(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5902(Lio/bidmachine/protobuf/AdExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6002(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6102(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6202(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6402(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$6800(Lio/bidmachine/protobuf/AdExtension;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$6802(Lio/bidmachine/protobuf/AdExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$6902(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$7002(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7102(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7200(Lio/bidmachine/protobuf/AdExtension;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$7202(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7302(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7402(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7502(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7602(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7800(Lio/bidmachine/protobuf/AdExtension;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$7802(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$7902(Lio/bidmachine/protobuf/AdExtension;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8002(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$8102(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8202(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$8302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$8502(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8602(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$8800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$8900(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$9000(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$9100()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$9200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

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

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension;

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
    check-cast p1, Lio/bidmachine/protobuf/AdExtension;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    return v3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    return v3

    .line 50
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    return v3

    .line 69
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    return v3

    .line 103
    :cond_7
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    return v3

    .line 118
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v3

    .line 129
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eq v1, v2, :cond_a

    .line 138
    .line 139
    return v3

    .line 140
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eq v1, v2, :cond_b

    .line 149
    .line 150
    return v3

    .line 151
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eq v1, v2, :cond_c

    .line 160
    .line 161
    return v3

    .line 162
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eq v1, v2, :cond_d

    .line 171
    .line 172
    return v3

    .line 173
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v1, v2, :cond_e

    .line 182
    .line 183
    return v3

    .line 184
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_f

    .line 189
    .line 190
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_f

    .line 203
    .line 204
    return v3

    .line 205
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eq v1, v2, :cond_10

    .line 214
    .line 215
    return v3

    .line 216
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_11

    .line 221
    .line 222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_11

    .line 235
    .line 236
    return v3

    .line 237
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eq v1, v2, :cond_12

    .line 246
    .line 247
    return v3

    .line 248
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-nez v1, :cond_13

    .line 261
    .line 262
    return v3

    .line 263
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eq v1, v2, :cond_14

    .line 272
    .line 273
    return v3

    .line 274
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_15

    .line 279
    .line 280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_15

    .line 293
    .line 294
    return v3

    .line 295
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eq v1, v2, :cond_16

    .line 304
    .line 305
    return v3

    .line 306
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eq v1, v2, :cond_17

    .line 315
    .line 316
    return v3

    .line 317
    :cond_17
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 318
    .line 319
    iget v2, p1, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 320
    .line 321
    if-eq v1, v2, :cond_18

    .line 322
    .line 323
    return v3

    .line 324
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eq v1, v2, :cond_19

    .line 333
    .line 334
    return v3

    .line 335
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eq v1, v2, :cond_1a

    .line 344
    .line 345
    return v3

    .line 346
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eq v1, v2, :cond_1b

    .line 355
    .line 356
    return v3

    .line 357
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eq v1, v2, :cond_1c

    .line 366
    .line 367
    return v3

    .line 368
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eq v1, v2, :cond_1d

    .line 377
    .line 378
    return v3

    .line 379
    :cond_1d
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 380
    .line 381
    iget v2, p1, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 382
    .line 383
    if-eq v1, v2, :cond_1e

    .line 384
    .line 385
    return v3

    .line 386
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eq v1, v2, :cond_1f

    .line 403
    .line 404
    return v3

    .line 405
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eq v1, v2, :cond_20

    .line 414
    .line 415
    return v3

    .line 416
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_21

    .line 421
    .line 422
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-nez v1, :cond_21

    .line 435
    .line 436
    return v3

    .line 437
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eq v1, v2, :cond_22

    .line 446
    .line 447
    return v3

    .line 448
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eq v1, v2, :cond_23

    .line 457
    .line 458
    return v3

    .line 459
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_24

    .line 464
    .line 465
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-nez v1, :cond_24

    .line 478
    .line 479
    return v3

    .line 480
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-eq v1, v2, :cond_25

    .line 489
    .line 490
    return v3

    .line 491
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-eq v1, v2, :cond_26

    .line 500
    .line 501
    return v3

    .line 502
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_27

    .line 507
    .line 508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/rendering/Rendering;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_27

    .line 521
    .line 522
    return v3

    .line 523
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-eq v1, v2, :cond_28

    .line 532
    .line 533
    return v3

    .line 534
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eq v1, v2, :cond_29

    .line 543
    .line 544
    return v3

    .line 545
    :cond_29
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eq v1, v2, :cond_2a

    .line 554
    .line 555
    return v3

    .line 556
    :cond_2a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 557
    .line 558
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 559
    .line 560
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    if-nez p1, :cond_2b

    .line 565
    .line 566
    return v3

    .line 567
    :cond_2b
    return v0
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

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
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdCacheMaxAge()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdFlexibleSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAdMarkupLoadingTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCompanionSkipoffset()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCreativeExtensionOrBuilder()Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->valueOf(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getCreativeLoadingMethodValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreativeLoadingTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCridMonitoringEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCustomParams()Ljava/util/Map;
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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCustomParamsCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsMap()Ljava/util/Map;
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

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

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
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    .line 8
    .line 9
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
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLoadSkipoffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMraidCreativeValidationRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

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
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlaceholderTimeout()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    .line 2
    .line 3
    return v0
.end method

.method public getPreload()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPreloadAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getProgressDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getR1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getR1Delay()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    .line 2
    .line 3
    return v0
.end method

.method public getR2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRenderingConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v0, v2

    .line 29
    :cond_2
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v0, v2

    .line 39
    :cond_3
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    cmpl-float v4, v2, v3

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v0, v2

    .line 52
    :cond_4
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    .line 53
    .line 54
    cmpl-float v4, v2, v3

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    const/4 v4, 0x6

    .line 59
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/2addr v0, v2

    .line 64
    :cond_5
    :goto_1
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ge v1, v2, :cond_6

    .line 71
    .line 72
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 79
    .line 80
    const/4 v4, 0x7

    .line 81
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_6
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    .line 117
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/s0$b;->o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/s0$b;->r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/explorestack/protobuf/s0$b;->b()Lcom/explorestack/protobuf/s0;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/16 v4, 0x8

    .line 144
    .line 145
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    add-int/2addr v0, v2

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    .line 152
    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    const/16 v2, 0x9

    .line 156
    .line 157
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    add-int/2addr v0, v1

    .line 162
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    const/16 v2, 0xa

    .line 167
    .line 168
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/2addr v0, v1

    .line 173
    :cond_9
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    .line 174
    .line 175
    if-eqz v1, :cond_a

    .line 176
    .line 177
    const/16 v2, 0xb

    .line 178
    .line 179
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    add-int/2addr v0, v1

    .line 184
    :cond_a
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    const/16 v2, 0xc

    .line 189
    .line 190
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    add-int/2addr v0, v1

    .line 195
    :cond_b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    .line 196
    .line 197
    if-eqz v1, :cond_c

    .line 198
    .line 199
    const/16 v2, 0xd

    .line 200
    .line 201
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    add-int/2addr v0, v1

    .line 206
    :cond_c
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 207
    .line 208
    if-eqz v1, :cond_d

    .line 209
    .line 210
    const/16 v1, 0xe

    .line 211
    .line 212
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    add-int/2addr v0, v1

    .line 221
    :cond_d
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 222
    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    const/16 v1, 0xf

    .line 226
    .line 227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    add-int/2addr v0, v1

    .line 236
    :cond_e
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    .line 237
    .line 238
    if-eqz v1, :cond_f

    .line 239
    .line 240
    const/16 v2, 0x10

    .line 241
    .line 242
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    add-int/2addr v0, v1

    .line 247
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_10

    .line 256
    .line 257
    const/16 v1, 0x11

    .line 258
    .line 259
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 260
    .line 261
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    add-int/2addr v0, v1

    .line 266
    :cond_10
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 267
    .line 268
    if-eqz v1, :cond_11

    .line 269
    .line 270
    const/16 v1, 0x12

    .line 271
    .line 272
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    add-int/2addr v0, v1

    .line 281
    :cond_11
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    .line 282
    .line 283
    if-eqz v1, :cond_12

    .line 284
    .line 285
    const/16 v2, 0x13

    .line 286
    .line 287
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    add-int/2addr v0, v1

    .line 292
    :cond_12
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    .line 293
    .line 294
    if-eqz v1, :cond_13

    .line 295
    .line 296
    const/16 v2, 0x14

    .line 297
    .line 298
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    add-int/2addr v0, v1

    .line 303
    :cond_13
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 304
    .line 305
    sget-object v2, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    .line 306
    .line 307
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eq v1, v2, :cond_14

    .line 312
    .line 313
    const/16 v1, 0x15

    .line 314
    .line 315
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 316
    .line 317
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    add-int/2addr v0, v1

    .line 322
    :cond_14
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    .line 323
    .line 324
    if-eqz v1, :cond_15

    .line 325
    .line 326
    const/16 v2, 0x16

    .line 327
    .line 328
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    add-int/2addr v0, v1

    .line 333
    :cond_15
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    .line 334
    .line 335
    if-eqz v1, :cond_16

    .line 336
    .line 337
    const/16 v2, 0x17

    .line 338
    .line 339
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    add-int/2addr v0, v1

    .line 344
    :cond_16
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    .line 345
    .line 346
    if-eqz v1, :cond_17

    .line 347
    .line 348
    const/16 v2, 0x18

    .line 349
    .line 350
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    add-int/2addr v0, v1

    .line 355
    :cond_17
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    .line 356
    .line 357
    if-eqz v1, :cond_18

    .line 358
    .line 359
    const/16 v2, 0x19

    .line 360
    .line 361
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    add-int/2addr v0, v1

    .line 366
    :cond_18
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    .line 367
    .line 368
    if-eqz v1, :cond_19

    .line 369
    .line 370
    const/16 v2, 0x1a

    .line 371
    .line 372
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    add-int/2addr v0, v1

    .line 377
    :cond_19
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 378
    .line 379
    sget-object v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 380
    .line 381
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getNumber()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eq v1, v2, :cond_1a

    .line 386
    .line 387
    const/16 v1, 0x1b

    .line 388
    .line 389
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 390
    .line 391
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->l(II)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    add-int/2addr v0, v1

    .line 396
    :cond_1a
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    .line 397
    .line 398
    cmpl-float v2, v1, v3

    .line 399
    .line 400
    if-eqz v2, :cond_1b

    .line 401
    .line 402
    const/16 v2, 0x1c

    .line 403
    .line 404
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    add-int/2addr v0, v1

    .line 409
    :cond_1b
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 410
    .line 411
    if-eqz v1, :cond_1c

    .line 412
    .line 413
    const/16 v1, 0x1d

    .line 414
    .line 415
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    add-int/2addr v0, v1

    .line 424
    :cond_1c
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    .line 425
    .line 426
    if-eqz v1, :cond_1d

    .line 427
    .line 428
    const/16 v2, 0x1e

    .line 429
    .line 430
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    add-int/2addr v0, v1

    .line 435
    :cond_1d
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 436
    .line 437
    if-eqz v1, :cond_1e

    .line 438
    .line 439
    const/16 v1, 0x1f

    .line 440
    .line 441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    add-int/2addr v0, v1

    .line 450
    :cond_1e
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    .line 451
    .line 452
    if-eqz v1, :cond_1f

    .line 453
    .line 454
    const/16 v2, 0x20

    .line 455
    .line 456
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    add-int/2addr v0, v1

    .line 461
    :cond_1f
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 462
    .line 463
    if-eqz v1, :cond_20

    .line 464
    .line 465
    const/16 v1, 0x21

    .line 466
    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    add-int/2addr v0, v1

    .line 476
    :cond_20
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    .line 477
    .line 478
    if-eqz v1, :cond_21

    .line 479
    .line 480
    const/16 v2, 0x22

    .line 481
    .line 482
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    add-int/2addr v0, v1

    .line 487
    :cond_21
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    .line 488
    .line 489
    if-eqz v1, :cond_22

    .line 490
    .line 491
    const/16 v2, 0x23

    .line 492
    .line 493
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->x(II)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    add-int/2addr v0, v1

    .line 498
    :cond_22
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    .line 499
    .line 500
    if-eqz v1, :cond_23

    .line 501
    .line 502
    const/16 v2, 0x24

    .line 503
    .line 504
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    add-int/2addr v0, v1

    .line 509
    :cond_23
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 510
    .line 511
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    add-int/2addr v0, v1

    .line 516
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 517
    .line 518
    return v0
.end method

.method public getSkipoffset()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    .line 2
    .line 3
    return v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

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

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseEmbeddedBrowser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getUseNativeClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getViewabilityDurationThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    .line 2
    .line 3
    return v0
.end method

.method public getViewabilityIgnoreOverlap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getViewabilityIgnoreWindowFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getViewabilityPixelThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    .line 2
    .line 3
    return v0
.end method

.method public getViewabilityTimeThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasCloseButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasCountdown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasCreativeExtension()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

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

.method public hasEventConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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

.method public hasProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasRenderingConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

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
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    add-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x3

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/2addr v1, v0

    .line 54
    mul-int/lit8 v1, v1, 0x25

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x5

    .line 57
    .line 58
    mul-int/lit8 v1, v1, 0x35

    .line 59
    .line 60
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x25

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x6

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x35

    .line 74
    .line 75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v1, v0

    .line 84
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventCount()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_1

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x25

    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x7

    .line 93
    .line 94
    mul-int/lit8 v1, v1, 0x35

    .line 95
    .line 96
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr v1, v0

    .line 105
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    mul-int/lit8 v1, v1, 0x25

    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x8

    .line 122
    .line 123
    mul-int/lit8 v1, v1, 0x35

    .line 124
    .line 125
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    add-int/2addr v1, v0

    .line 134
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x9

    .line 137
    .line 138
    mul-int/lit8 v1, v1, 0x35

    .line 139
    .line 140
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/2addr v1, v0

    .line 145
    mul-int/lit8 v1, v1, 0x25

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0xa

    .line 148
    .line 149
    mul-int/lit8 v1, v1, 0x35

    .line 150
    .line 151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    add-int/2addr v1, v0

    .line 156
    mul-int/lit8 v1, v1, 0x25

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0xb

    .line 159
    .line 160
    mul-int/lit8 v1, v1, 0x35

    .line 161
    .line 162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    add-int/2addr v1, v0

    .line 171
    mul-int/lit8 v1, v1, 0x25

    .line 172
    .line 173
    add-int/lit8 v1, v1, 0xc

    .line 174
    .line 175
    mul-int/lit8 v1, v1, 0x35

    .line 176
    .line 177
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/2addr v1, v0

    .line 186
    mul-int/lit8 v1, v1, 0x25

    .line 187
    .line 188
    add-int/lit8 v1, v1, 0xd

    .line 189
    .line 190
    mul-int/lit8 v1, v1, 0x35

    .line 191
    .line 192
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    add-int/2addr v1, v0

    .line 201
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    mul-int/lit8 v1, v1, 0x25

    .line 208
    .line 209
    add-int/lit8 v1, v1, 0xe

    .line 210
    .line 211
    mul-int/lit8 v1, v1, 0x35

    .line 212
    .line 213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    add-int/2addr v1, v0

    .line 222
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    mul-int/lit8 v1, v1, 0x25

    .line 229
    .line 230
    add-int/lit8 v1, v1, 0xf

    .line 231
    .line 232
    mul-int/lit8 v1, v1, 0x35

    .line 233
    .line 234
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    add-int/2addr v1, v0

    .line 243
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 244
    .line 245
    add-int/lit8 v1, v1, 0x10

    .line 246
    .line 247
    mul-int/lit8 v1, v1, 0x35

    .line 248
    .line 249
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    add-int/2addr v1, v0

    .line 258
    mul-int/lit8 v1, v1, 0x25

    .line 259
    .line 260
    add-int/lit8 v1, v1, 0x11

    .line 261
    .line 262
    mul-int/lit8 v1, v1, 0x35

    .line 263
    .line 264
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    add-int/2addr v1, v0

    .line 273
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_5

    .line 278
    .line 279
    mul-int/lit8 v1, v1, 0x25

    .line 280
    .line 281
    add-int/lit8 v1, v1, 0x12

    .line 282
    .line 283
    mul-int/lit8 v1, v1, 0x35

    .line 284
    .line 285
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    add-int/2addr v1, v0

    .line 294
    :cond_5
    mul-int/lit8 v1, v1, 0x25

    .line 295
    .line 296
    add-int/lit8 v1, v1, 0x13

    .line 297
    .line 298
    mul-int/lit8 v1, v1, 0x35

    .line 299
    .line 300
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    add-int/2addr v1, v0

    .line 305
    mul-int/lit8 v1, v1, 0x25

    .line 306
    .line 307
    add-int/lit8 v1, v1, 0x14

    .line 308
    .line 309
    mul-int/lit8 v1, v1, 0x35

    .line 310
    .line 311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    add-int/2addr v1, v0

    .line 320
    mul-int/lit8 v1, v1, 0x25

    .line 321
    .line 322
    add-int/lit8 v1, v1, 0x15

    .line 323
    .line 324
    mul-int/lit8 v1, v1, 0x35

    .line 325
    .line 326
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 327
    .line 328
    add-int/2addr v1, v0

    .line 329
    mul-int/lit8 v1, v1, 0x25

    .line 330
    .line 331
    add-int/lit8 v1, v1, 0x16

    .line 332
    .line 333
    mul-int/lit8 v1, v1, 0x35

    .line 334
    .line 335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    add-int/2addr v1, v0

    .line 340
    mul-int/lit8 v1, v1, 0x25

    .line 341
    .line 342
    add-int/lit8 v1, v1, 0x17

    .line 343
    .line 344
    mul-int/lit8 v1, v1, 0x35

    .line 345
    .line 346
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    add-int/2addr v1, v0

    .line 351
    mul-int/lit8 v1, v1, 0x25

    .line 352
    .line 353
    add-int/lit8 v1, v1, 0x18

    .line 354
    .line 355
    mul-int/lit8 v1, v1, 0x35

    .line 356
    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    add-int/2addr v1, v0

    .line 362
    mul-int/lit8 v1, v1, 0x25

    .line 363
    .line 364
    add-int/lit8 v1, v1, 0x19

    .line 365
    .line 366
    mul-int/lit8 v1, v1, 0x35

    .line 367
    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    add-int/2addr v1, v0

    .line 377
    mul-int/lit8 v1, v1, 0x25

    .line 378
    .line 379
    add-int/lit8 v1, v1, 0x1a

    .line 380
    .line 381
    mul-int/lit8 v1, v1, 0x35

    .line 382
    .line 383
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    add-int/2addr v1, v0

    .line 392
    mul-int/lit8 v1, v1, 0x25

    .line 393
    .line 394
    add-int/lit8 v1, v1, 0x1b

    .line 395
    .line 396
    mul-int/lit8 v1, v1, 0x35

    .line 397
    .line 398
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 399
    .line 400
    add-int/2addr v1, v0

    .line 401
    mul-int/lit8 v1, v1, 0x25

    .line 402
    .line 403
    add-int/lit8 v1, v1, 0x1c

    .line 404
    .line 405
    mul-int/lit8 v1, v1, 0x35

    .line 406
    .line 407
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    add-int/2addr v1, v0

    .line 416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_6

    .line 421
    .line 422
    mul-int/lit8 v1, v1, 0x25

    .line 423
    .line 424
    add-int/lit8 v1, v1, 0x1d

    .line 425
    .line 426
    mul-int/lit8 v1, v1, 0x35

    .line 427
    .line 428
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->hashCode()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    add-int/2addr v1, v0

    .line 437
    :cond_6
    mul-int/lit8 v1, v1, 0x25

    .line 438
    .line 439
    add-int/lit8 v1, v1, 0x1e

    .line 440
    .line 441
    mul-int/lit8 v1, v1, 0x35

    .line 442
    .line 443
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    add-int/2addr v1, v0

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_7

    .line 457
    .line 458
    mul-int/lit8 v1, v1, 0x25

    .line 459
    .line 460
    add-int/lit8 v1, v1, 0x1f

    .line 461
    .line 462
    mul-int/lit8 v1, v1, 0x35

    .line 463
    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension;->hashCode()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    add-int/2addr v1, v0

    .line 473
    :cond_7
    mul-int/lit8 v1, v1, 0x25

    .line 474
    .line 475
    add-int/lit8 v1, v1, 0x20

    .line 476
    .line 477
    mul-int/lit8 v1, v1, 0x35

    .line 478
    .line 479
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    add-int/2addr v1, v0

    .line 488
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_8

    .line 493
    .line 494
    mul-int/lit8 v1, v1, 0x25

    .line 495
    .line 496
    add-int/lit8 v1, v1, 0x21

    .line 497
    .line 498
    mul-int/lit8 v1, v1, 0x35

    .line 499
    .line 500
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering;->hashCode()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    add-int/2addr v1, v0

    .line 509
    :cond_8
    mul-int/lit8 v1, v1, 0x25

    .line 510
    .line 511
    add-int/lit8 v1, v1, 0x22

    .line 512
    .line 513
    mul-int/lit8 v1, v1, 0x35

    .line 514
    .line 515
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    add-int/2addr v1, v0

    .line 524
    mul-int/lit8 v1, v1, 0x25

    .line 525
    .line 526
    add-int/lit8 v1, v1, 0x23

    .line 527
    .line 528
    mul-int/lit8 v1, v1, 0x35

    .line 529
    .line 530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    add-int/2addr v1, v0

    .line 535
    mul-int/lit8 v1, v1, 0x25

    .line 536
    .line 537
    add-int/lit8 v1, v1, 0x24

    .line 538
    .line 539
    mul-int/lit8 v1, v1, 0x35

    .line 540
    .line 541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    add-int/2addr v1, v0

    .line 550
    mul-int/lit8 v1, v1, 0x1d

    .line 551
    .line 552
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    add-int/2addr v1, v0

    .line 559
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 560
    .line 561
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/AdExtension;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/AdExtension$Builder;

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
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/AdExtension;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    cmpl-float v2, v0, v1

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    .line 37
    .line 38
    cmpl-float v2, v0, v1

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    const/4 v2, 0x6

    .line 43
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 44
    .line 45
    .line 46
    :cond_4
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ge v0, v2, :cond_5

    .line 54
    .line 55
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    .line 62
    .line 63
    const/4 v3, 0x7

    .line 64
    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v2, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/s0;

    .line 75
    .line 76
    const/16 v3, 0x8

    .line 77
    .line 78
    invoke-static {p1, v0, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/s0;I)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x9

    .line 86
    .line 87
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 88
    .line 89
    .line 90
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    const/16 v2, 0xa

    .line 95
    .line 96
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 97
    .line 98
    .line 99
    :cond_7
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    .line 100
    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    const/16 v2, 0xb

    .line 104
    .line 105
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 106
    .line 107
    .line 108
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    .line 109
    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    const/16 v2, 0xc

    .line 113
    .line 114
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 115
    .line 116
    .line 117
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    .line 118
    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    const/16 v2, 0xd

    .line 122
    .line 123
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 124
    .line 125
    .line 126
    :cond_a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 127
    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    const/16 v0, 0xe

    .line 131
    .line 132
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 137
    .line 138
    .line 139
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 140
    .line 141
    if-eqz v0, :cond_c

    .line 142
    .line 143
    const/16 v0, 0xf

    .line 144
    .line 145
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 150
    .line 151
    .line 152
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    .line 153
    .line 154
    if-eqz v0, :cond_d

    .line 155
    .line 156
    const/16 v2, 0x10

    .line 157
    .line 158
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 159
    .line 160
    .line 161
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_e

    .line 170
    .line 171
    const/16 v0, 0x11

    .line 172
    .line 173
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 174
    .line 175
    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_e
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 179
    .line 180
    if-eqz v0, :cond_f

    .line 181
    .line 182
    const/16 v0, 0x12

    .line 183
    .line 184
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 189
    .line 190
    .line 191
    :cond_f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    .line 192
    .line 193
    if-eqz v0, :cond_10

    .line 194
    .line 195
    const/16 v2, 0x13

    .line 196
    .line 197
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 198
    .line 199
    .line 200
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    .line 201
    .line 202
    if-eqz v0, :cond_11

    .line 203
    .line 204
    const/16 v2, 0x14

    .line 205
    .line 206
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 207
    .line 208
    .line 209
    :cond_11
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 210
    .line 211
    sget-object v2, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    .line 212
    .line 213
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eq v0, v2, :cond_12

    .line 218
    .line 219
    const/16 v0, 0x15

    .line 220
    .line 221
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 222
    .line 223
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 224
    .line 225
    .line 226
    :cond_12
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    .line 227
    .line 228
    if-eqz v0, :cond_13

    .line 229
    .line 230
    const/16 v2, 0x16

    .line 231
    .line 232
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 233
    .line 234
    .line 235
    :cond_13
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    .line 236
    .line 237
    if-eqz v0, :cond_14

    .line 238
    .line 239
    const/16 v2, 0x17

    .line 240
    .line 241
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 242
    .line 243
    .line 244
    :cond_14
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    .line 245
    .line 246
    if-eqz v0, :cond_15

    .line 247
    .line 248
    const/16 v2, 0x18

    .line 249
    .line 250
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 251
    .line 252
    .line 253
    :cond_15
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    .line 254
    .line 255
    if-eqz v0, :cond_16

    .line 256
    .line 257
    const/16 v2, 0x19

    .line 258
    .line 259
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 260
    .line 261
    .line 262
    :cond_16
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    .line 263
    .line 264
    if-eqz v0, :cond_17

    .line 265
    .line 266
    const/16 v2, 0x1a

    .line 267
    .line 268
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 269
    .line 270
    .line 271
    :cond_17
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 272
    .line 273
    sget-object v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 274
    .line 275
    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getNumber()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eq v0, v2, :cond_18

    .line 280
    .line 281
    const/16 v0, 0x1b

    .line 282
    .line 283
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 284
    .line 285
    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->v0(II)V

    .line 286
    .line 287
    .line 288
    :cond_18
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    .line 289
    .line 290
    cmpl-float v1, v0, v1

    .line 291
    .line 292
    if-eqz v1, :cond_19

    .line 293
    .line 294
    const/16 v1, 0x1c

    .line 295
    .line 296
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 297
    .line 298
    .line 299
    :cond_19
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 300
    .line 301
    if-eqz v0, :cond_1a

    .line 302
    .line 303
    const/16 v0, 0x1d

    .line 304
    .line 305
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 310
    .line 311
    .line 312
    :cond_1a
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    .line 313
    .line 314
    if-eqz v0, :cond_1b

    .line 315
    .line 316
    const/16 v1, 0x1e

    .line 317
    .line 318
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 319
    .line 320
    .line 321
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 322
    .line 323
    if-eqz v0, :cond_1c

    .line 324
    .line 325
    const/16 v0, 0x1f

    .line 326
    .line 327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 332
    .line 333
    .line 334
    :cond_1c
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    .line 335
    .line 336
    if-eqz v0, :cond_1d

    .line 337
    .line 338
    const/16 v1, 0x20

    .line 339
    .line 340
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 341
    .line 342
    .line 343
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 344
    .line 345
    if-eqz v0, :cond_1e

    .line 346
    .line 347
    const/16 v0, 0x21

    .line 348
    .line 349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 354
    .line 355
    .line 356
    :cond_1e
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    .line 357
    .line 358
    if-eqz v0, :cond_1f

    .line 359
    .line 360
    const/16 v1, 0x22

    .line 361
    .line 362
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 363
    .line 364
    .line 365
    :cond_1f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    .line 366
    .line 367
    if-eqz v0, :cond_20

    .line 368
    .line 369
    const/16 v1, 0x23

    .line 370
    .line 371
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 372
    .line 373
    .line 374
    :cond_20
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    .line 375
    .line 376
    if-eqz v0, :cond_21

    .line 377
    .line 378
    const/16 v1, 0x24

    .line 379
    .line 380
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 381
    .line 382
    .line 383
    :cond_21
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 384
    .line 385
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 386
    .line 387
    .line 388
    return-void
.end method
