.class public final Lcom/startshorts/androidplayer/bean/configure/FeatureController;
.super Ljava/lang/Object;
.source "FeatureController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private apiErrorCodeReport:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private catonDowngradeEnable:Z

.field private cdnEnable:Z

.field private checkInitializerOnForeground:Z

.field private controlAfInit:Z

.field private customDeviceIdEnable:Z

.field private customPushQueryInterval:I

.field private discoverPreloadEnable:Z

.field private dynamicDomainEnable:Z

.field private fixedBannerHeightEnable:Z

.field private fixedReportEvent:Z

.field private fixedReportInterval:I

.field private httpDNSApiEnable:Z

.field private httpDNSCountryCodes:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private httpDNSErrorCodes:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private httpDNSIpExpirationTime:J

.field private httpDNSLookupAgainIfLocalFailed:Z

.field private httpDNSPlayerEnable:Z

.field private httpDNSQueryIpUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private httpDNSTimeOut:I

.field private immersionRefreshLayoutEnable:Z

.field private interceptChildThreadCrashes:Z

.field private interceptCrashesType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interceptMainThreadCrashes:Z

.field private lockedEpisodeDisableSlideUp:Z

.field private maxCampaignInfoParseCount:I

.field private newEcpmFormatEnable:Z

.field private onlyOneImmersionActivity:Z

.field private pageInfoCollectMaxNum:I

.field private pageInfoReportEnable:Z

.field private pageInfoReportNum:I

.field private playerHeadersNotifyEnable:Z

.field private playerNetworkTimeout:I

.field private playerNetworkTimeoutCountryCodes:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ratingEnable:Z

.field private remoteConfigAwaitFirebaseEnable:Z

.field private shortsPreloadEnable:Z

.field private shortsProgressBarOptimizationEnable:Z

.field private shortsRefreshLayoutEnable:Z

.field private unregisterOnPageChangeCallbackOnPause:Z

.field private uploadEventInterval:I

.field private uploadEventMaxSize:I

.field private useNewLogUpload:Z

.field private webviewBackgroundTransparentEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 49

    .line 1
    move-object/from16 v0, p0

    const/16 v47, 0xfff

    const/16 v48, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x1

    invoke-direct/range {v0 .. v48}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;-><init>(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;)V
    .locals 9
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p17

    move-object/from16 v3, p18

    move-object/from16 v4, p19

    move-object/from16 v5, p22

    move-object/from16 v6, p45

    const-string v7, "httpDNSQueryIpUrl"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "httpDNSErrorCodes"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "httpDNSCountryCodes"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "playerNetworkTimeoutCountryCodes"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "apiErrorCodeReport"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "interceptCrashesType"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v7, p1

    .line 3
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    move v7, p2

    .line 4
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    move v7, p3

    .line 5
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    move v7, p4

    .line 6
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    move v7, p5

    .line 7
    iput v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    move v7, p6

    .line 8
    iput v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    move/from16 v7, p7

    .line 9
    iput v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    move/from16 v7, p8

    .line 10
    iput v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    move/from16 v7, p9

    .line 11
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    move/from16 v7, p10

    .line 12
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    move/from16 v7, p11

    .line 13
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 14
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    move-wide/from16 v7, p13

    .line 15
    iput-wide v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 18
    iput-object v2, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 19
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 20
    iput-object v4, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    move/from16 v1, p20

    .line 21
    iput v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 23
    iput-object v5, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    move/from16 v1, p23

    .line 24
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    move/from16 v1, p24

    .line 25
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    move/from16 v1, p25

    .line 26
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    move/from16 v1, p26

    .line 27
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    move/from16 v1, p27

    .line 28
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    move/from16 v1, p28

    .line 29
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    move/from16 v1, p29

    .line 30
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    move/from16 v1, p30

    .line 31
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    move/from16 v1, p31

    .line 32
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    move/from16 v1, p32

    .line 33
    iput v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    move/from16 v1, p33

    .line 34
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    move/from16 v1, p34

    .line 35
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    move/from16 v1, p35

    .line 36
    iput v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    move/from16 v1, p36

    .line 37
    iput v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    move/from16 v1, p37

    .line 38
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    move/from16 v1, p38

    .line 39
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    move/from16 v1, p39

    .line 40
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    move/from16 v1, p40

    .line 41
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    move/from16 v1, p41

    .line 42
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    move/from16 v1, p42

    .line 43
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    move/from16 v1, p43

    .line 44
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    move/from16 v1, p44

    .line 45
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 46
    iput-object v6, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 44

    move/from16 v0, p46

    move/from16 v1, p47

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/16 v8, 0x18

    goto :goto_4

    :cond_4
    move/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/16 v9, 0xa

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    const/16 v11, 0x32

    goto :goto_6

    :cond_6
    move/from16 v11, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    const/16 v12, 0x12c

    goto :goto_7

    :cond_7
    move/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    move/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move/from16 v15, p11

    :goto_a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_b

    .line 47
    const-string v3, "[https://103.150.251.71]"

    goto :goto_b

    :cond_b
    move-object/from16 v3, p12

    :goto_b
    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_c

    const-wide/16 v16, 0x708

    goto :goto_c

    :cond_c
    move-wide/from16 v16, p13

    :goto_c
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :cond_d
    move/from16 v5, p15

    :goto_d
    and-int/lit16 v10, v0, 0x4000

    if-eqz v10, :cond_e

    const/16 v10, 0xf

    goto :goto_e

    :cond_e
    move/from16 v10, p16

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    .line 48
    const-string v18, "[-499897,-9999]"

    goto :goto_f

    :cond_f
    move-object/from16 v18, p17

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    .line 49
    const-string v19, "[]"

    goto :goto_10

    :cond_10
    move-object/from16 v19, p18

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    .line 50
    const-string v20, "[ZA,KE,JM,GB,IN,AU,MY]"

    goto :goto_11

    :cond_11
    move-object/from16 v20, p19

    :goto_11
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_12

    const/16 v21, 0xa

    goto :goto_12

    :cond_12
    move/from16 v21, p20

    :goto_12
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    goto :goto_13

    :cond_13
    move/from16 v22, p21

    :goto_13
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_14

    .line 51
    const-string v23, "[400,500]"

    goto :goto_14

    :cond_14
    move-object/from16 v23, p22

    :goto_14
    const/high16 v24, 0x200000

    and-int v24, v0, v24

    if-eqz v24, :cond_15

    const/16 v24, 0x1

    goto :goto_15

    :cond_15
    move/from16 v24, p23

    :goto_15
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_16

    const/16 v25, 0x1

    goto :goto_16

    :cond_16
    move/from16 v25, p24

    :goto_16
    const/high16 v26, 0x800000

    and-int v26, v0, v26

    if-eqz v26, :cond_17

    const/16 v26, 0x1

    goto :goto_17

    :cond_17
    move/from16 v26, p25

    :goto_17
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_18

    const/16 v27, 0x1

    goto :goto_18

    :cond_18
    move/from16 v27, p26

    :goto_18
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_19

    const/16 v28, 0x1

    goto :goto_19

    :cond_19
    move/from16 v28, p27

    :goto_19
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1a

    const/16 v29, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v29, p28

    :goto_1a
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1b

    const/16 v30, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v30, p29

    :goto_1b
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1c

    const/16 v31, 0x1

    goto :goto_1c

    :cond_1c
    move/from16 v31, p30

    :goto_1c
    const/high16 v32, 0x20000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1d

    const/16 v32, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v32, p31

    :goto_1d
    const/high16 v33, 0x40000000    # 2.0f

    and-int v33, v0, v33

    if-eqz v33, :cond_1e

    const/16 v33, 0x3c

    goto :goto_1e

    :cond_1e
    move/from16 v33, p32

    :goto_1e
    const/high16 v34, -0x80000000

    and-int v0, v0, v34

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move/from16 v0, p33

    :goto_1f
    and-int/lit8 v34, v1, 0x1

    if-eqz v34, :cond_20

    const/16 v34, 0x0

    goto :goto_20

    :cond_20
    move/from16 v34, p34

    :goto_20
    and-int/lit8 v35, v1, 0x2

    const/16 v36, 0x14

    if-eqz v35, :cond_21

    move/from16 v35, v36

    goto :goto_21

    :cond_21
    move/from16 v35, p35

    :goto_21
    and-int/lit8 v37, v1, 0x4

    if-eqz v37, :cond_22

    goto :goto_22

    :cond_22
    move/from16 v36, p36

    :goto_22
    and-int/lit8 v37, v1, 0x8

    if-eqz v37, :cond_23

    const/16 v37, 0x1

    goto :goto_23

    :cond_23
    move/from16 v37, p37

    :goto_23
    and-int/lit8 v38, v1, 0x10

    if-eqz v38, :cond_24

    const/16 v38, 0x0

    goto :goto_24

    :cond_24
    move/from16 v38, p38

    :goto_24
    and-int/lit8 v39, v1, 0x20

    if-eqz v39, :cond_25

    const/16 v39, 0x0

    goto :goto_25

    :cond_25
    move/from16 v39, p39

    :goto_25
    and-int/lit8 v40, v1, 0x40

    if-eqz v40, :cond_26

    const/16 v40, 0x1

    goto :goto_26

    :cond_26
    move/from16 v40, p40

    :goto_26
    move/from16 p46, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    move/from16 v0, p41

    :goto_27
    move/from16 v41, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    move/from16 v0, p42

    :goto_28
    move/from16 v42, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_29

    :cond_29
    move/from16 v0, p43

    :goto_29
    move/from16 v43, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move/from16 v0, p44

    :goto_2a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2b

    .line 52
    const-string v1, "[NullPointerException,UnsatisfiedLinkError,android.app.RemoteServiceException,Bad notification,CursorWindowAllocationException,OverlappingFileLockException,IllegalArgumentException,SQLiteCantOpenDatabaseException,NotFoundException,DeadSystemException,SQLiteDiskIOException,BadTokenException,FileNotFoundException,SQLiteFullException,RSRuntimeException,ConcurrentModificationException]"

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p45

    :goto_2b
    move-object/from16 p1, p0

    move/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v11

    move/from16 p9, v12

    move/from16 p10, v13

    move/from16 p11, v14

    move/from16 p12, v15

    move-object/from16 p13, v3

    move-wide/from16 p14, v16

    move/from16 p16, v5

    move/from16 p17, v10

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move/from16 p21, v21

    move/from16 p22, v22

    move-object/from16 p23, v23

    move/from16 p24, v24

    move/from16 p25, v25

    move/from16 p26, v26

    move/from16 p27, v27

    move/from16 p28, v28

    move/from16 p29, v29

    move/from16 p30, v30

    move/from16 p31, v31

    move/from16 p32, v32

    move/from16 p33, v33

    move/from16 p34, p46

    move/from16 p35, v34

    move/from16 p36, v35

    move/from16 p37, v36

    move/from16 p38, v37

    move/from16 p39, v38

    move/from16 p40, v39

    move/from16 p41, v40

    move/from16 p42, v41

    move/from16 p43, v42

    move/from16 p44, v43

    move/from16 p45, v0

    move-object/from16 p46, v1

    .line 53
    invoke-direct/range {p1 .. p46}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;-><init>(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/configure/FeatureController;ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;IILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/configure/FeatureController;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p46

    move/from16 v2, p47

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-boolean v13, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p12, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p13

    :goto_c
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    goto :goto_d

    :cond_d
    move/from16 v14, p15

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    goto :goto_12

    :cond_12
    move/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_16

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    goto :goto_16

    :cond_16
    move/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_17

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    goto :goto_17

    :cond_17
    move/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_18

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    goto :goto_18

    :cond_18
    move/from16 v15, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_19

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    goto :goto_19

    :cond_19
    move/from16 v15, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_1a

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    goto :goto_1a

    :cond_1a
    move/from16 v15, p28

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_1b

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    goto :goto_1b

    :cond_1b
    move/from16 v15, p29

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p29, v15

    if-eqz v16, :cond_1c

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    goto :goto_1c

    :cond_1c
    move/from16 v15, p30

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_1d

    iget-boolean v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    goto :goto_1d

    :cond_1d
    move/from16 v15, p31

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move/from16 p31, v15

    if-eqz v16, :cond_1e

    iget v15, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    goto :goto_1e

    :cond_1e
    move/from16 v15, p32

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    goto :goto_1f

    :cond_1f
    move/from16 v1, p33

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move/from16 p33, v1

    if-eqz v16, :cond_20

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    goto :goto_20

    :cond_20
    move/from16 v1, p34

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move/from16 p34, v1

    if-eqz v16, :cond_21

    iget v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    goto :goto_21

    :cond_21
    move/from16 v1, p35

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move/from16 p35, v1

    if-eqz v16, :cond_22

    iget v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    goto :goto_22

    :cond_22
    move/from16 v1, p36

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move/from16 p36, v1

    if-eqz v16, :cond_23

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    goto :goto_23

    :cond_23
    move/from16 v1, p37

    :goto_23
    and-int/lit8 v16, v2, 0x10

    move/from16 p37, v1

    if-eqz v16, :cond_24

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p38

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move/from16 p38, v1

    if-eqz v16, :cond_25

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    goto :goto_25

    :cond_25
    move/from16 v1, p39

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move/from16 p39, v1

    if-eqz v16, :cond_26

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    goto :goto_26

    :cond_26
    move/from16 v1, p40

    :goto_26
    move/from16 p40, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    goto :goto_27

    :cond_27
    move/from16 v1, p41

    :goto_27
    move/from16 p41, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    goto :goto_28

    :cond_28
    move/from16 v1, p42

    :goto_28
    move/from16 p42, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    goto :goto_29

    :cond_29
    move/from16 v1, p43

    :goto_29
    move/from16 p43, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    goto :goto_2a

    :cond_2a
    move/from16 v1, p44

    :goto_2a
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    goto :goto_2b

    :cond_2b
    move-object/from16 v2, p45

    :goto_2b
    move/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p15, v14

    move/from16 p32, v15

    move/from16 p44, v1

    move-object/from16 p45, v2

    invoke-virtual/range {p0 .. p45}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->copy(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;)Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component11()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component14()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component15()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 2
    .line 3
    return v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component20()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component23()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component24()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component25()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component26()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component27()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component28()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component29()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component30()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component31()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component32()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component33()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component34()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component35()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component36()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component37()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component38()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component39()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component40()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component41()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component42()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component43()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component44()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;)Lcom/startshorts/androidplayer/bean/configure/FeatureController;
    .locals 47
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move/from16 v32, p32

    move/from16 v33, p33

    move/from16 v34, p34

    move/from16 v35, p35

    move/from16 v36, p36

    move/from16 v37, p37

    move/from16 v38, p38

    move/from16 v39, p39

    move/from16 v40, p40

    move/from16 v41, p41

    move/from16 v42, p42

    move/from16 v43, p43

    move/from16 v44, p44

    move-object/from16 v45, p45

    const-string v0, "httpDNSQueryIpUrl"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpDNSErrorCodes"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpDNSCountryCodes"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerNetworkTimeoutCountryCodes"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiErrorCodeReport"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptCrashesType"

    move-object/from16 v1, p45

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v46, Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    move-object/from16 v0, v46

    move/from16 v1, p1

    invoke-direct/range {v0 .. v45}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;-><init>(ZZZZIIIIZZZLjava/lang/String;JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZZZZZZZZZIZZIIZZZZZZZZLjava/lang/String;)V

    return-object v46
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 42
    .line 43
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 49
    .line 50
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 56
    .line 57
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 63
    .line 64
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 70
    .line 71
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 72
    .line 73
    if-eq v1, v3, :cond_a

    .line 74
    .line 75
    return v2

    .line 76
    :cond_a
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 77
    .line 78
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 79
    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    return v2

    .line 83
    :cond_b
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 86
    .line 87
    if-eq v1, v3, :cond_c

    .line 88
    .line 89
    return v2

    .line 90
    :cond_c
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_d

    .line 99
    .line 100
    return v2

    .line 101
    :cond_d
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 102
    .line 103
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 104
    .line 105
    cmp-long v1, v3, v5

    .line 106
    .line 107
    if-eqz v1, :cond_e

    .line 108
    .line 109
    return v2

    .line 110
    :cond_e
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 111
    .line 112
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 113
    .line 114
    if-eq v1, v3, :cond_f

    .line 115
    .line 116
    return v2

    .line 117
    :cond_f
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 118
    .line 119
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 120
    .line 121
    if-eq v1, v3, :cond_10

    .line 122
    .line 123
    return v2

    .line 124
    :cond_10
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_11

    .line 133
    .line 134
    return v2

    .line 135
    :cond_11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_12

    .line 144
    .line 145
    return v2

    .line 146
    :cond_12
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_13

    .line 155
    .line 156
    return v2

    .line 157
    :cond_13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 158
    .line 159
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 160
    .line 161
    if-eq v1, v3, :cond_14

    .line 162
    .line 163
    return v2

    .line 164
    :cond_14
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 165
    .line 166
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 167
    .line 168
    if-eq v1, v3, :cond_15

    .line 169
    .line 170
    return v2

    .line 171
    :cond_15
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_16

    .line 180
    .line 181
    return v2

    .line 182
    :cond_16
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 183
    .line 184
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 185
    .line 186
    if-eq v1, v3, :cond_17

    .line 187
    .line 188
    return v2

    .line 189
    :cond_17
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 190
    .line 191
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 192
    .line 193
    if-eq v1, v3, :cond_18

    .line 194
    .line 195
    return v2

    .line 196
    :cond_18
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 197
    .line 198
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 199
    .line 200
    if-eq v1, v3, :cond_19

    .line 201
    .line 202
    return v2

    .line 203
    :cond_19
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 204
    .line 205
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 206
    .line 207
    if-eq v1, v3, :cond_1a

    .line 208
    .line 209
    return v2

    .line 210
    :cond_1a
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 211
    .line 212
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 213
    .line 214
    if-eq v1, v3, :cond_1b

    .line 215
    .line 216
    return v2

    .line 217
    :cond_1b
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 218
    .line 219
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 220
    .line 221
    if-eq v1, v3, :cond_1c

    .line 222
    .line 223
    return v2

    .line 224
    :cond_1c
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 225
    .line 226
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 227
    .line 228
    if-eq v1, v3, :cond_1d

    .line 229
    .line 230
    return v2

    .line 231
    :cond_1d
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 232
    .line 233
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 234
    .line 235
    if-eq v1, v3, :cond_1e

    .line 236
    .line 237
    return v2

    .line 238
    :cond_1e
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 239
    .line 240
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 241
    .line 242
    if-eq v1, v3, :cond_1f

    .line 243
    .line 244
    return v2

    .line 245
    :cond_1f
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 246
    .line 247
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 248
    .line 249
    if-eq v1, v3, :cond_20

    .line 250
    .line 251
    return v2

    .line 252
    :cond_20
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 253
    .line 254
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 255
    .line 256
    if-eq v1, v3, :cond_21

    .line 257
    .line 258
    return v2

    .line 259
    :cond_21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 260
    .line 261
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 262
    .line 263
    if-eq v1, v3, :cond_22

    .line 264
    .line 265
    return v2

    .line 266
    :cond_22
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 267
    .line 268
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 269
    .line 270
    if-eq v1, v3, :cond_23

    .line 271
    .line 272
    return v2

    .line 273
    :cond_23
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 274
    .line 275
    iget v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 276
    .line 277
    if-eq v1, v3, :cond_24

    .line 278
    .line 279
    return v2

    .line 280
    :cond_24
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 281
    .line 282
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 283
    .line 284
    if-eq v1, v3, :cond_25

    .line 285
    .line 286
    return v2

    .line 287
    :cond_25
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 288
    .line 289
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 290
    .line 291
    if-eq v1, v3, :cond_26

    .line 292
    .line 293
    return v2

    .line 294
    :cond_26
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 295
    .line 296
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 297
    .line 298
    if-eq v1, v3, :cond_27

    .line 299
    .line 300
    return v2

    .line 301
    :cond_27
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 302
    .line 303
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 304
    .line 305
    if-eq v1, v3, :cond_28

    .line 306
    .line 307
    return v2

    .line 308
    :cond_28
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 309
    .line 310
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 311
    .line 312
    if-eq v1, v3, :cond_29

    .line 313
    .line 314
    return v2

    .line 315
    :cond_29
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 316
    .line 317
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 318
    .line 319
    if-eq v1, v3, :cond_2a

    .line 320
    .line 321
    return v2

    .line 322
    :cond_2a
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 323
    .line 324
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 325
    .line 326
    if-eq v1, v3, :cond_2b

    .line 327
    .line 328
    return v2

    .line 329
    :cond_2b
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 330
    .line 331
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 332
    .line 333
    if-eq v1, v3, :cond_2c

    .line 334
    .line 335
    return v2

    .line 336
    :cond_2c
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 337
    .line 338
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-nez p1, :cond_2d

    .line 345
    .line 346
    return v2

    .line 347
    :cond_2d
    return v0
.end method

.method public final getApiErrorCodeReport()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCatonDowngradeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCdnEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCheckInitializerOnForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getControlAfInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCustomDeviceIdEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCustomPushQueryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDiscoverPreloadEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDynamicDomainEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFixedBannerHeightEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFixedReportEvent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFixedReportInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHttpDNSApiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHttpDNSCountryCodes()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpDNSErrorCodes()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpDNSIpExpirationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHttpDNSLookupAgainIfLocalFailed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHttpDNSPlayerEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHttpDNSQueryIpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpDNSTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImmersionRefreshLayoutEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInterceptChildThreadCrashes()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInterceptCrashesType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterceptMainThreadCrashes()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLockedEpisodeDisableSlideUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxCampaignInfoParseCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNewEcpmFormatEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnlyOneImmersionActivity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPageInfoCollectMaxNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageInfoReportEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPageInfoReportNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlayerHeadersNotifyEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPlayerNetworkTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlayerNetworkTimeoutCountryCodes()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatingEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRemoteConfigAwaitFirebaseEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortsPreloadEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortsProgressBarOptimizationEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShortsRefreshLayoutEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUnregisterOnPageChangeCallbackOnPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUploadEventInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUploadEventMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUseNewLogUpload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getWebviewBackgroundTransparentEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    .line 135
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    .line 171
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    .line 180
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    add-int/2addr v0, v1

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    .line 188
    .line 189
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    .line 197
    .line 198
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    .line 207
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    add-int/2addr v0, v1

    .line 214
    mul-int/lit8 v0, v0, 0x1f

    .line 215
    .line 216
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    add-int/2addr v0, v1

    .line 223
    mul-int/lit8 v0, v0, 0x1f

    .line 224
    .line 225
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 226
    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    add-int/2addr v0, v1

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    .line 233
    .line 234
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 235
    .line 236
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    add-int/2addr v0, v1

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    .line 242
    .line 243
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 244
    .line 245
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    add-int/2addr v0, v1

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    .line 251
    .line 252
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 253
    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    add-int/2addr v0, v1

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 262
    .line 263
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    add-int/2addr v0, v1

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    .line 269
    .line 270
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 271
    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    add-int/2addr v0, v1

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    .line 278
    .line 279
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 280
    .line 281
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    add-int/2addr v0, v1

    .line 286
    mul-int/lit8 v0, v0, 0x1f

    .line 287
    .line 288
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 289
    .line 290
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    add-int/2addr v0, v1

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    .line 296
    .line 297
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 298
    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    add-int/2addr v0, v1

    .line 304
    mul-int/lit8 v0, v0, 0x1f

    .line 305
    .line 306
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 307
    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    add-int/2addr v0, v1

    .line 313
    mul-int/lit8 v0, v0, 0x1f

    .line 314
    .line 315
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    add-int/2addr v0, v1

    .line 322
    mul-int/lit8 v0, v0, 0x1f

    .line 323
    .line 324
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 325
    .line 326
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    add-int/2addr v0, v1

    .line 331
    mul-int/lit8 v0, v0, 0x1f

    .line 332
    .line 333
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 334
    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    add-int/2addr v0, v1

    .line 340
    mul-int/lit8 v0, v0, 0x1f

    .line 341
    .line 342
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 343
    .line 344
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    .line 350
    .line 351
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    add-int/2addr v0, v1

    .line 358
    mul-int/lit8 v0, v0, 0x1f

    .line 359
    .line 360
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 361
    .line 362
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    add-int/2addr v0, v1

    .line 367
    mul-int/lit8 v0, v0, 0x1f

    .line 368
    .line 369
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 370
    .line 371
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    add-int/2addr v0, v1

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 379
    .line 380
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    add-int/2addr v0, v1

    .line 385
    mul-int/lit8 v0, v0, 0x1f

    .line 386
    .line 387
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    add-int/2addr v0, v1

    .line 394
    return v0
.end method

.method public final setApiErrorCodeReport(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCatonDowngradeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCdnEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCheckInitializerOnForeground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setControlAfInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCustomDeviceIdEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCustomPushQueryInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDiscoverPreloadEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDynamicDomainEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFixedBannerHeightEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFixedReportEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFixedReportInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpDNSApiEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpDNSCountryCodes(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setHttpDNSErrorCodes(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setHttpDNSIpExpirationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpDNSLookupAgainIfLocalFailed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpDNSPlayerEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpDNSQueryIpUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setHttpDNSTimeOut(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImmersionRefreshLayoutEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInterceptChildThreadCrashes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInterceptCrashesType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setInterceptMainThreadCrashes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLockedEpisodeDisableSlideUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxCampaignInfoParseCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNewEcpmFormatEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnlyOneImmersionActivity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPageInfoCollectMaxNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageInfoReportEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPageInfoReportNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayerHeadersNotifyEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayerNetworkTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayerNetworkTimeoutCountryCodes(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRatingEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRemoteConfigAwaitFirebaseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortsPreloadEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortsProgressBarOptimizationEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortsRefreshLayoutEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnregisterOnPageChangeCallbackOnPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadEventInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadEventMaxSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUseNewLogUpload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWebviewBackgroundTransparentEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FeatureController(ratingEnable="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->ratingEnable:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", dynamicDomainEnable="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->dynamicDomainEnable:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", shortsProgressBarOptimizationEnable="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsProgressBarOptimizationEnable:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", cdnEnable="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->cdnEnable:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", maxCampaignInfoParseCount="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->maxCampaignInfoParseCount:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", uploadEventInterval="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventInterval:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", uploadEventMaxSize="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->uploadEventMaxSize:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", customPushQueryInterval="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customPushQueryInterval:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", lockedEpisodeDisableSlideUp="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->lockedEpisodeDisableSlideUp:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", httpDNSApiEnable="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSApiEnable:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", httpDNSPlayerEnable="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSPlayerEnable:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", httpDNSQueryIpUrl="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSQueryIpUrl:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", httpDNSIpExpirationTime="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSIpExpirationTime:J

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", httpDNSLookupAgainIfLocalFailed="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSLookupAgainIfLocalFailed:Z

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", httpDNSTimeOut="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSTimeOut:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", httpDNSErrorCodes="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSErrorCodes:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", httpDNSCountryCodes="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->httpDNSCountryCodes:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", playerNetworkTimeoutCountryCodes="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeoutCountryCodes:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", playerNetworkTimeout="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerNetworkTimeout:I

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", playerHeadersNotifyEnable="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->playerHeadersNotifyEnable:Z

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", apiErrorCodeReport="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->apiErrorCodeReport:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", customDeviceIdEnable="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->customDeviceIdEnable:Z

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", immersionRefreshLayoutEnable="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->immersionRefreshLayoutEnable:Z

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", shortsRefreshLayoutEnable="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsRefreshLayoutEnable:Z

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, ", remoteConfigAwaitFirebaseEnable="

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->remoteConfigAwaitFirebaseEnable:Z

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", catonDowngradeEnable="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->catonDowngradeEnable:Z

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", fixedBannerHeightEnable="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedBannerHeightEnable:Z

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ", controlAfInit="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->controlAfInit:Z

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, ", unregisterOnPageChangeCallbackOnPause="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->unregisterOnPageChangeCallbackOnPause:Z

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", fixedReportEvent="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportEvent:Z

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, ", fixedReportInterval="

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->fixedReportInterval:I

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v1, ", useNewLogUpload="

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->useNewLogUpload:Z

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", pageInfoReportEnable="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportEnable:Z

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", pageInfoReportNum="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoReportNum:I

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, ", pageInfoCollectMaxNum="

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    iget v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->pageInfoCollectMaxNum:I

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, ", webviewBackgroundTransparentEnable="

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->webviewBackgroundTransparentEnable:Z

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, ", discoverPreloadEnable="

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->discoverPreloadEnable:Z

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", shortsPreloadEnable="

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->shortsPreloadEnable:Z

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, ", newEcpmFormatEnable="

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->newEcpmFormatEnable:Z

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, ", checkInitializerOnForeground="

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->checkInitializerOnForeground:Z

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, ", onlyOneImmersionActivity="

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->onlyOneImmersionActivity:Z

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, ", interceptChildThreadCrashes="

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptChildThreadCrashes:Z

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v1, ", interceptMainThreadCrashes="

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptMainThreadCrashes:Z

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v1, ", interceptCrashesType="

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->interceptCrashesType:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const/16 v1, 0x29

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    return-object v0
.end method
