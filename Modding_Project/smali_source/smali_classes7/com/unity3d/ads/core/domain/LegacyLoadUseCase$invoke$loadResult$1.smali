.class final Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LegacyLoadUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->invoke(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lcom/unity3d/ads/core/data/model/LoadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.LegacyLoadUseCase$invoke$loadResult$1"
    f = "LegacyLoadUseCase.kt"
    l = {
        0x7f,
        0x86,
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gatewayBannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

.field final synthetic $loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field final synthetic $opportunityId:Ljava/lang/String;

.field final synthetic $placement:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Landroid/content/Context;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;",
            "Landroid/content/Context;",
            "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$opportunityId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$gatewayBannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$opportunityId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$gatewayBannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Landroid/content/Context;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/LoadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->label:I

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x3

    .line 11
    const/4 v10, 0x2

    .line 12
    const/4 v11, 0x1

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eq v0, v11, :cond_2

    .line 16
    .line 17
    if-eq v0, v10, :cond_1

    .line 18
    .line 19
    if-ne v0, v7, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 39
    .line 40
    iget-object v1, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object v4, v0

    .line 48
    move-object v3, v1

    .line 49
    move-object/from16 v0, p1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v0, p1

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 68
    .line 69
    sget-object v13, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 70
    .line 71
    const/16 v19, 0x34

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    const-string v14, "[UnityAds] Placement ID cannot be null"

    .line 76
    .line 77
    const/4 v15, 0x0

    .line 78
    const-string v16, "placement_null"

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    move-object v12, v0

    .line 85
    invoke-direct/range {v12 .. v20}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_4
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$opportunityId:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "fromString(opportunityId)"

    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toByteString(Ljava/util/UUID;)Lcom/google/protobuf/ByteString;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 105
    .line 106
    invoke-static {v0, v12}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$setOpportunity$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Lcom/google/protobuf/ByteString;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getAdRepository$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0, v12}, Lcom/unity3d/ads/core/data/repository/AdRepository;->hasOpportunityId(Lcom/google/protobuf/ByteString;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    new-instance v13, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 122
    .line 123
    sget-object v14, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 124
    .line 125
    const/16 v20, 0x34

    .line 126
    .line 127
    const/16 v21, 0x0

    .line 128
    .line 129
    const-string v15, "[UnityAds] Object ID already used"

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const-string v17, "opportunity_id_used"

    .line 134
    .line 135
    const/16 v18, 0x0

    .line 136
    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    invoke-direct/range {v13 .. v21}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getAdMarkup$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getHeaderBiddingAdMarkup(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;Ljava/lang/String;)Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    if-nez v13, :cond_6

    .line 153
    .line 154
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 155
    .line 156
    sget-object v15, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 157
    .line 158
    const/16 v21, 0x34

    .line 159
    .line 160
    const/16 v22, 0x0

    .line 161
    .line 162
    const-string v16, "[UnityAds] Could not parse Ad Markup"

    .line 163
    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const-string v18, "invalid_admarkup"

    .line 167
    .line 168
    const/16 v19, 0x0

    .line 169
    .line 170
    const/16 v20, 0x0

    .line 171
    .line 172
    move-object v14, v0

    .line 173
    invoke-direct/range {v14 .. v22}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_6
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getGetInitializationState$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-static {v0, v1, v11, v6}, Lcom/unity3d/ads/core/domain/GetInitializationState$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/GetInitializationState;ZILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v1, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    aget v0, v1, v0

    .line 195
    .line 196
    if-eq v0, v11, :cond_e

    .line 197
    .line 198
    if-eq v0, v10, :cond_d

    .line 199
    .line 200
    if-eq v0, v7, :cond_d

    .line 201
    .line 202
    const/4 v1, 0x4

    .line 203
    if-ne v0, v1, :cond_c

    .line 204
    .line 205
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getAwaitInitialization$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/domain/AwaitInitialization;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v12, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v13, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$1:Ljava/lang/Object;

    .line 214
    .line 215
    iput v10, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->label:I

    .line 216
    .line 217
    const-wide/16 v1, 0x0

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    const/4 v5, 0x0

    .line 221
    move-object/from16 v3, p0

    .line 222
    .line 223
    invoke-static/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AwaitInitialization$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/AwaitInitialization;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v9, :cond_7

    .line 228
    .line 229
    return-object v9

    .line 230
    :cond_7
    move-object v3, v12

    .line 231
    move-object v4, v13

    .line 232
    :goto_0
    check-cast v0, Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 233
    .line 234
    if-nez v0, :cond_8

    .line 235
    .line 236
    const/4 v0, -0x1

    .line 237
    goto :goto_1

    .line 238
    :cond_8
    sget-object v1, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    aget v0, v1, v0

    .line 245
    .line 246
    :goto_1
    if-eq v0, v11, :cond_a

    .line 247
    .line 248
    if-eq v0, v10, :cond_9

    .line 249
    .line 250
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 251
    .line 252
    sget-object v13, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v2, "[UnityAds] Timeout while loading "

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v2, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    const/16 v19, 0x34

    .line 274
    .line 275
    const/16 v20, 0x0

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    const-string v16, "timeout_initialization"

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    move-object v12, v0

    .line 285
    invoke-direct/range {v12 .. v20}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_4

    .line 289
    .line 290
    :cond_9
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 291
    .line 292
    sget-object v22, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 293
    .line 294
    const/16 v28, 0x34

    .line 295
    .line 296
    const/16 v29, 0x0

    .line 297
    .line 298
    const-string v23, "[UnityAds] SDK not initialized"

    .line 299
    .line 300
    const/16 v24, 0x0

    .line 301
    .line 302
    const-string v25, "not_initialized"

    .line 303
    .line 304
    const/16 v26, 0x0

    .line 305
    .line 306
    const/16 v27, 0x0

    .line 307
    .line 308
    move-object/from16 v21, v0

    .line 309
    .line 310
    invoke-direct/range {v21 .. v29}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_a
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 315
    .line 316
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getLoad$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/domain/Load;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v1, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$context:Landroid/content/Context;

    .line 321
    .line 322
    iget-object v2, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v5, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$gatewayBannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 325
    .line 326
    iget-object v10, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 327
    .line 328
    iput-object v6, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$0:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v6, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->L$1:Ljava/lang/Object;

    .line 331
    .line 332
    iput v7, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->label:I

    .line 333
    .line 334
    move-object v6, v10

    .line 335
    move-object/from16 v7, p0

    .line 336
    .line 337
    invoke-interface/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/Load;->invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-ne v0, v9, :cond_b

    .line 342
    .line 343
    return-object v9

    .line 344
    :cond_b
    :goto_2
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 348
    .line 349
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_d
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 354
    .line 355
    sget-object v10, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 356
    .line 357
    const/16 v16, 0x34

    .line 358
    .line 359
    const/16 v17, 0x0

    .line 360
    .line 361
    const-string v11, "[UnityAds] SDK not initialized"

    .line 362
    .line 363
    const/4 v12, 0x0

    .line 364
    const-string v13, "not_initialized"

    .line 365
    .line 366
    const/4 v14, 0x0

    .line 367
    const/4 v15, 0x0

    .line 368
    move-object v9, v0

    .line 369
    invoke-direct/range {v9 .. v17}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 370
    .line 371
    .line 372
    return-object v0

    .line 373
    :cond_e
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->this$0:Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    .line 374
    .line 375
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;->access$getLoad$p(Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;)Lcom/unity3d/ads/core/domain/Load;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    iget-object v1, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$context:Landroid/content/Context;

    .line 380
    .line 381
    iget-object v2, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$placement:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v5, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$gatewayBannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 384
    .line 385
    iget-object v6, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 386
    .line 387
    iput v11, v8, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$invoke$loadResult$1;->label:I

    .line 388
    .line 389
    move-object v3, v12

    .line 390
    move-object v4, v13

    .line 391
    move-object/from16 v7, p0

    .line 392
    .line 393
    invoke-interface/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/Load;->invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    if-ne v0, v9, :cond_f

    .line 398
    .line 399
    return-object v9

    .line 400
    :cond_f
    :goto_3
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    .line 401
    .line 402
    :goto_4
    return-object v0
.end method
