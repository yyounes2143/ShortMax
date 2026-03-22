.class public final Lcom/unity3d/ads/core/data/manager/AndroidScarManager;
.super Ljava/lang/Object;
.source "AndroidScarManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/manager/ScarManager;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidScarManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,129:1\n1#2:130\n20#3:131\n22#3:135\n50#4:132\n55#4:134\n106#5:133\n*S KotlinDebug\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager\n*L\n113#1:131\n113#1:135\n113#1:132\n113#1:134\n113#1:133\n*E\n"
    }
.end annotation


# instance fields
.field private final gmaBridge:Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scarTimeHackFixer:Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scarEventReceiver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gmaBridge"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scarTimeHackFixer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->gmaBridge:Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarTimeHackFixer:Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$getGmaBridge$p(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;)Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->gmaBridge:Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getScarEventReceiver$p(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;)Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getScarTimeHackFixer$p(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;)Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarTimeHackFixer:Lcom/unity3d/ads/core/domain/scar/ScarTimeHackFixer;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getSignals(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$getSignals$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$getSignals$2;-><init>(Ljava/util/List;Lcom/unity3d/ads/core/data/manager/AndroidScarManager;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const-wide/32 v1, 0xc350

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2, v0, p2}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getVersion(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$getVersion$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$getVersion$2;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x1388

    .line 8
    .line 9
    invoke-static {v1, v2, v0, p1}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    instance-of v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;

    .line 11
    .line 12
    iget v2, v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;->label:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v10, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;

    .line 26
    .line 27
    invoke-direct {v1, v9, v0}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v10, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    iget v1, v10, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;->label:I

    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    if-ne v1, v13, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->INTERSTITIAL:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    invoke-static {v1, v0, v13}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v0, v9, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->getGmaEventFlow()Lkt/f;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    new-instance v15, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$2;

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    move-object v0, v15

    .line 82
    move-object/from16 v1, p0

    .line 83
    .line 84
    move-object/from16 v3, p2

    .line 85
    .line 86
    move-object/from16 v4, p5

    .line 87
    .line 88
    move-object/from16 v5, p3

    .line 89
    .line 90
    move-object/from16 v6, p4

    .line 91
    .line 92
    move/from16 v7, p6

    .line 93
    .line 94
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$2;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v14, v15}, Lkotlinx/coroutines/flow/c;->Q(Lkt/f;Lkotlin/jvm/functions/Function2;)Lkt/f;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$3;

    .line 102
    .line 103
    move-object/from16 v2, p2

    .line 104
    .line 105
    invoke-direct {v1, v2, v12}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$3;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 106
    .line 107
    .line 108
    iput v13, v10, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadAd$1;->label:I

    .line 109
    .line 110
    invoke-static {v0, v1, v10}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-ne v0, v11, :cond_3

    .line 115
    .line 116
    return-object v11

    .line 117
    :cond_3
    :goto_2
    move-object v1, v0

    .line 118
    check-cast v1, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;->getGmaEvent()Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    sget-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 125
    .line 126
    if-eq v1, v2, :cond_4

    .line 127
    .line 128
    move-object v12, v0

    .line 129
    :cond_4
    check-cast v12, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 130
    .line 131
    if-eqz v12, :cond_6

    .line 132
    .line 133
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/LoadException;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "Error loading SCAR ad: "

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;->getErrorMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    invoke-virtual {v12}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;->getGmaEvent()Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-direct {v0, v2, v1}, Lcom/unity3d/ads/core/data/model/exception/LoadException;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object v0
.end method

.method public loadBannerAd(Landroid/content/Context;Lcom/unity3d/services/banners/BannerView;Lnl/c;Lcom/unity3d/services/banners/UnityBannerSize;Ljava/lang/String;)Lkt/b;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/banners/BannerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnl/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/services/banners/UnityBannerSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/banners/BannerView;",
            "Lnl/c;",
            "Lcom/unity3d/services/banners/UnityBannerSize;",
            "Ljava/lang/String;",
            ")",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bannerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scarAdMetadata"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "bannerSize"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "opportunityId"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->getGmaEventFlow()Lkt/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v9, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadBannerAd$1;

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v1, v9

    .line 36
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p5

    .line 40
    move-object v6, p3

    .line 41
    move-object v7, p4

    .line 42
    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadBannerAd$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;Landroid/content/Context;Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Lnl/c;Lcom/unity3d/services/banners/UnityBannerSize;Lrs/c;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v9}, Lkotlinx/coroutines/flow/c;->P(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadBannerAd$$inlined$filter$1;

    .line 50
    .line 51
    invoke-direct {p2, p1, p5}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$loadBannerAd$$inlined$filter$1;-><init>(Lkt/b;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p2
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)Lkt/b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "placementId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "queryId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->scarEventReceiver:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->getGmaEventFlow()Lkt/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$1;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidScarManager;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/c;->Q(Lkt/f;Lkotlin/jvm/functions/Function2;)Lkt/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;

    .line 28
    .line 29
    invoke-direct {p2, v2}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;-><init>(Lrs/c;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->Y(Lkt/b;Lat/n;)Lkt/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
