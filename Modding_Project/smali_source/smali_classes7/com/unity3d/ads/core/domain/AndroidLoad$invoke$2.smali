.class final Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidLoad.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidLoad;->invoke(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    c = "com.unity3d.ads.core.domain.AndroidLoad$invoke$2"
    f = "AndroidLoad.kt"
    l = {
        0x48,
        0x4c,
        0x5d,
        0x61,
        0x88
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidLoad.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AdResponseKt.kt\ngatewayprotocol/v1/AdResponseKtKt\n*L\n1#1,206:1\n79#2,5:207\n113#2,7:212\n79#2,5:220\n113#2,7:225\n1#3:219\n1#3:233\n10#4:232\n*S KotlinDebug\n*F\n+ 1 AndroidLoad.kt\ncom/unity3d/ads/core/domain/AndroidLoad$invoke$2\n*L\n74#1:207,5\n74#1:212,7\n95#1:220,5\n95#1:225,7\n118#1:233\n118#1:232\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

.field final synthetic $loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field final synthetic $opportunityId:Lcom/google/protobuf/ByteString;

.field final synthetic $placement:Ljava/lang/String;

.field I$0:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidLoad;",
            "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;",
            "Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 10
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
    new-instance v9, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidLoad;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Landroid/content/Context;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v9, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v9
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const-string v9, "response.adData"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    iget v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I

    .line 10
    .line 11
    const-string v12, "native_load_config_failure_time"

    .line 12
    .line 13
    const-string v13, "native_load_config_success_time"

    .line 14
    .line 15
    const/4 v14, 0x5

    .line 16
    const/4 v7, 0x4

    .line 17
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    if-eq v0, v6, :cond_4

    .line 24
    .line 25
    if-eq v0, v2, :cond_3

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    if-eq v0, v7, :cond_1

    .line 30
    .line 31
    if-ne v0, v14, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    goto/16 :goto_14

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto/16 :goto_15

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    iget-wide v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    .line 52
    .line 53
    iget v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 54
    .line 55
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v4, v0

    .line 58
    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 59
    .line 60
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v5, v0

    .line 63
    check-cast v5, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 64
    .line 65
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    move-object/from16 v0, p1

    .line 69
    .line 70
    move/from16 v20, v6

    .line 71
    .line 72
    move-object/from16 v16, v12

    .line 73
    .line 74
    move-object v12, v8

    .line 75
    goto/16 :goto_c

    .line 76
    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move/from16 v20, v6

    .line 79
    .line 80
    move-object/from16 v16, v12

    .line 81
    .line 82
    move-object v12, v8

    .line 83
    goto/16 :goto_f

    .line 84
    .line 85
    :cond_2
    iget v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 86
    .line 87
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 90
    .line 91
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 94
    .line 95
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Lgt/g0;

    .line 98
    .line 99
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    move v15, v0

    .line 103
    move-object v14, v1

    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    move-object/from16 v16, v12

    .line 107
    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    move-object v12, v8

    .line 111
    move-object v8, v2

    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_3
    iget-wide v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    .line 115
    .line 116
    iget v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 117
    .line 118
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    move-object v4, v0

    .line 121
    check-cast v4, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 122
    .line 123
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v5, v0

    .line 126
    check-cast v5, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 127
    .line 128
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    move-object/from16 v0, p1

    .line 132
    .line 133
    move/from16 v20, v6

    .line 134
    .line 135
    move-object/from16 v16, v12

    .line 136
    .line 137
    move-object v12, v8

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :catchall_1
    move-exception v0

    .line 141
    move/from16 v20, v6

    .line 142
    .line 143
    move-object/from16 v16, v12

    .line 144
    .line 145
    move-object v12, v8

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_4
    iget v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 149
    .line 150
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v1, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 153
    .line 154
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 157
    .line 158
    iget-object v4, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v4, Lgt/g0;

    .line 161
    .line 162
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    .line 164
    .line 165
    move v15, v0

    .line 166
    move-object v9, v1

    .line 167
    move-object v14, v3

    .line 168
    move-object/from16 v0, p1

    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Lgt/g0;

    .line 178
    .line 179
    :try_start_5
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 180
    .line 181
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-interface {v3}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isSdkInitialized()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_6

    .line 190
    .line 191
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 192
    .line 193
    sget-object v17, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 194
    .line 195
    const-string v20, "not_initialized"

    .line 196
    .line 197
    const/16 v23, 0x36

    .line 198
    .line 199
    const/16 v24, 0x0

    .line 200
    .line 201
    const/16 v18, 0x0

    .line 202
    .line 203
    const/16 v19, 0x0

    .line 204
    .line 205
    const/16 v21, 0x0

    .line 206
    .line 207
    const/16 v22, 0x0

    .line 208
    .line 209
    move-object/from16 v16, v0

    .line 210
    .line 211
    invoke-direct/range {v16 .. v24}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_6
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 216
    .line 217
    if-eqz v3, :cond_7

    .line 218
    .line 219
    move v3, v6

    .line 220
    goto :goto_0

    .line 221
    :cond_7
    const/4 v3, 0x0

    .line 222
    :goto_0
    if-eqz v3, :cond_8

    .line 223
    .line 224
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 225
    .line 226
    :goto_1
    move-object v5, v4

    .line 227
    goto :goto_2

    .line 228
    :cond_8
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_FULLSCREEN:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :goto_2
    iget-object v4, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 232
    .line 233
    invoke-virtual {v4}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdData()Lcom/google/protobuf/ByteString;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    xor-int/lit8 v15, v4, 0x1

    .line 242
    .line 243
    iget-object v14, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 244
    .line 245
    iget-object v7, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 246
    .line 247
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 250
    .line 251
    move-object/from16 v16, v14

    .line 252
    .line 253
    move-object/from16 v17, v7

    .line 254
    .line 255
    move-object/from16 v18, v1

    .line 256
    .line 257
    move/from16 v19, v15

    .line 258
    .line 259
    move-object/from16 v20, v5

    .line 260
    .line 261
    move-object/from16 v21, v2

    .line 262
    .line 263
    invoke-static/range {v16 .. v21}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getTmpAdObject(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/google/protobuf/ByteString;Ljava/lang/String;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    if-eqz v4, :cond_c

    .line 268
    .line 269
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 270
    .line 271
    invoke-static {v1, v3}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$incrementLoadRequestCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 275
    .line 276
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetAdRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdRequest;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 283
    .line 284
    iget-object v4, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 285
    .line 286
    iput-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v5, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v7, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 291
    .line 292
    iput v15, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 293
    .line 294
    iput v6, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I

    .line 295
    .line 296
    invoke-interface {v1, v2, v3, v4, v10}, Lcom/unity3d/ads/core/domain/GetAdRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lrs/c;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-ne v0, v11, :cond_9

    .line 301
    .line 302
    return-object v11

    .line 303
    :cond_9
    move-object v14, v5

    .line 304
    move-object v9, v7

    .line 305
    :goto_3
    move-object v3, v0

    .line 306
    check-cast v3, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 307
    .line 308
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 309
    .line 310
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 319
    .line 320
    sget-object v1, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 321
    .line 322
    invoke-virtual {v1}, Lkotlin/time/h;->b()J

    .line 323
    .line 324
    .line 325
    move-result-wide v1
    :try_end_5
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_5 .. :try_end_5} :catch_0

    .line 326
    :try_start_6
    sget-object v5, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    sget-object v5, Lcom/unity3d/ads/core/data/model/OperationType;->LOAD:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 333
    .line 334
    iput-object v14, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v9, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 337
    .line 338
    iput-object v8, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 339
    .line 340
    iput v15, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 341
    .line 342
    iput-wide v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    .line 343
    .line 344
    const/4 v7, 0x2

    .line 345
    iput v7, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 346
    .line 347
    const/4 v7, 0x0

    .line 348
    const/16 v16, 0x1

    .line 349
    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    move-wide/from16 v18, v1

    .line 353
    .line 354
    move-object v1, v0

    .line 355
    move-object v2, v7

    .line 356
    move/from16 v20, v6

    .line 357
    .line 358
    move-object/from16 v6, p0

    .line 359
    .line 360
    move/from16 v7, v16

    .line 361
    .line 362
    move-object/from16 v16, v12

    .line 363
    .line 364
    move-object v12, v8

    .line 365
    move-object/from16 v8, v17

    .line 366
    .line 367
    :try_start_7
    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 371
    if-ne v0, v11, :cond_a

    .line 372
    .line 373
    return-object v11

    .line 374
    :cond_a
    move-object v4, v9

    .line 375
    move-object v5, v14

    .line 376
    move v3, v15

    .line 377
    move-wide/from16 v1, v18

    .line 378
    .line 379
    :goto_4
    :try_start_8
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 380
    .line 381
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 385
    :goto_5
    move-object/from16 v29, v4

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :catchall_2
    move-exception v0

    .line 389
    goto :goto_6

    .line 390
    :catchall_3
    move-exception v0

    .line 391
    move-object v4, v9

    .line 392
    move-object v5, v14

    .line 393
    move v3, v15

    .line 394
    move-wide/from16 v1, v18

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :catchall_4
    move-exception v0

    .line 398
    move-wide/from16 v18, v1

    .line 399
    .line 400
    move/from16 v20, v6

    .line 401
    .line 402
    move-object/from16 v16, v12

    .line 403
    .line 404
    move-object v12, v8

    .line 405
    move-object v4, v9

    .line 406
    move-object v5, v14

    .line 407
    move v3, v15

    .line 408
    :goto_6
    :try_start_9
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 409
    .line 410
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    goto :goto_5

    .line 419
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-instance v4, Let/c;

    .line 424
    .line 425
    invoke-static {v1, v2}, Lkotlin/time/h$a;->f(J)J

    .line 426
    .line 427
    .line 428
    move-result-wide v1

    .line 429
    invoke-direct {v4, v0, v1, v2, v12}, Let/c;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 433
    .line 434
    invoke-virtual {v4}, Let/c;->a()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    check-cast v1, Lkotlin/Result;

    .line 439
    .line 440
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v4}, Let/c;->b()J

    .line 445
    .line 446
    .line 447
    move-result-wide v6

    .line 448
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 449
    .line 450
    .line 451
    move-result-object v24

    .line 452
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_b

    .line 457
    .line 458
    move-object/from16 v25, v13

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_b
    move-object/from16 v25, v16

    .line 462
    .line 463
    :goto_8
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 464
    .line 465
    invoke-static {v6, v7, v0}, Lkotlin/time/b;->H(JLkotlin/time/DurationUnit;)D

    .line 466
    .line 467
    .line 468
    move-result-wide v0

    .line 469
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 470
    .line 471
    .line 472
    move-result-object v26

    .line 473
    const/16 v31, 0x2c

    .line 474
    .line 475
    const/16 v32, 0x0

    .line 476
    .line 477
    const/16 v27, 0x0

    .line 478
    .line 479
    const/16 v28, 0x0

    .line 480
    .line 481
    const/16 v30, 0x0

    .line 482
    .line 483
    invoke-static/range {v24 .. v32}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4}, Let/c;->c()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Lkotlin/Result;

    .line 491
    .line 492
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 500
    .line 501
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    :goto_9
    move-object v4, v0

    .line 510
    move-object v7, v5

    .line 511
    goto/16 :goto_12

    .line 512
    .line 513
    :cond_c
    move/from16 v20, v6

    .line 514
    .line 515
    move-object/from16 v16, v12

    .line 516
    .line 517
    move-object v12, v8

    .line 518
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 519
    .line 520
    invoke-static {v1, v3}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$incrementLoadRequestAdmCount(Lcom/unity3d/ads/core/domain/AndroidLoad;Z)V

    .line 521
    .line 522
    .line 523
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 524
    .line 525
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetAdPlayerConfigRequest$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 530
    .line 531
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 532
    .line 533
    iget-object v4, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 534
    .line 535
    invoke-virtual {v4}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getConfigurationToken()Lcom/google/protobuf/ByteString;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    const-string v6, "headerBiddingAdMarkup.configurationToken"

    .line 540
    .line 541
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v6, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$bannerSize:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    .line 545
    .line 546
    if-eqz v6, :cond_d

    .line 547
    .line 548
    sget-object v6, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_d
    move-object v6, v12

    .line 552
    :goto_a
    iput-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 553
    .line 554
    iput-object v5, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 555
    .line 556
    iput-object v7, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 557
    .line 558
    iput v15, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 559
    .line 560
    const/4 v0, 0x3

    .line 561
    iput v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I

    .line 562
    .line 563
    move-object v0, v5

    .line 564
    move-object v5, v6

    .line 565
    move-object/from16 v6, p0

    .line 566
    .line 567
    invoke-interface/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;->invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    if-ne v1, v11, :cond_e

    .line 572
    .line 573
    return-object v11

    .line 574
    :cond_e
    move-object v8, v0

    .line 575
    move-object v14, v7

    .line 576
    :goto_b
    move-object v3, v1

    .line 577
    check-cast v3, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 578
    .line 579
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 580
    .line 581
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGetRequestPolicy$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 590
    .line 591
    sget-object v1, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 592
    .line 593
    invoke-virtual {v1}, Lkotlin/time/h;->b()J

    .line 594
    .line 595
    .line 596
    move-result-wide v6
    :try_end_9
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_9 .. :try_end_9} :catch_0

    .line 597
    :try_start_a
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 598
    .line 599
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getGatewayClient$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    sget-object v5, Lcom/unity3d/ads/core/data/model/OperationType;->LOAD_HEADER_BIDDING:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 604
    .line 605
    iput-object v8, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 606
    .line 607
    iput-object v14, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 608
    .line 609
    iput-object v12, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 610
    .line 611
    iput v15, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->I$0:I

    .line 612
    .line 613
    iput-wide v6, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->J$0:J

    .line 614
    .line 615
    const/4 v0, 0x4

    .line 616
    iput v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 617
    .line 618
    const/4 v2, 0x0

    .line 619
    const/4 v0, 0x1

    .line 620
    const/16 v17, 0x0

    .line 621
    .line 622
    move-wide/from16 v18, v6

    .line 623
    .line 624
    move-object/from16 v6, p0

    .line 625
    .line 626
    move v7, v0

    .line 627
    move-object/from16 v21, v8

    .line 628
    .line 629
    move-object/from16 v8, v17

    .line 630
    .line 631
    :try_start_b
    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 635
    if-ne v0, v11, :cond_f

    .line 636
    .line 637
    return-object v11

    .line 638
    :cond_f
    move-object v4, v14

    .line 639
    move v3, v15

    .line 640
    move-wide/from16 v1, v18

    .line 641
    .line 642
    move-object/from16 v5, v21

    .line 643
    .line 644
    :goto_c
    :try_start_c
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 645
    .line 646
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 650
    :goto_d
    move-object/from16 v29, v4

    .line 651
    .line 652
    goto :goto_10

    .line 653
    :catchall_5
    move-exception v0

    .line 654
    goto :goto_f

    .line 655
    :catchall_6
    move-exception v0

    .line 656
    :goto_e
    move-object v4, v14

    .line 657
    move v3, v15

    .line 658
    move-wide/from16 v1, v18

    .line 659
    .line 660
    move-object/from16 v5, v21

    .line 661
    .line 662
    goto :goto_f

    .line 663
    :catchall_7
    move-exception v0

    .line 664
    move-wide/from16 v18, v6

    .line 665
    .line 666
    move-object/from16 v21, v8

    .line 667
    .line 668
    goto :goto_e

    .line 669
    :goto_f
    :try_start_d
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 670
    .line 671
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    goto :goto_d

    .line 680
    :goto_10
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    new-instance v4, Let/c;

    .line 685
    .line 686
    invoke-static {v1, v2}, Lkotlin/time/h$a;->f(J)J

    .line 687
    .line 688
    .line 689
    move-result-wide v1

    .line 690
    invoke-direct {v4, v0, v1, v2, v12}, Let/c;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 691
    .line 692
    .line 693
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 694
    .line 695
    invoke-virtual {v4}, Let/c;->a()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    check-cast v1, Lkotlin/Result;

    .line 700
    .line 701
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v4}, Let/c;->b()J

    .line 706
    .line 707
    .line 708
    move-result-wide v6

    .line 709
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 710
    .line 711
    .line 712
    move-result-object v24

    .line 713
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_10

    .line 718
    .line 719
    move-object/from16 v25, v13

    .line 720
    .line 721
    goto :goto_11

    .line 722
    :cond_10
    move-object/from16 v25, v16

    .line 723
    .line 724
    :goto_11
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 725
    .line 726
    invoke-static {v6, v7, v0}, Lkotlin/time/b;->H(JLkotlin/time/DurationUnit;)D

    .line 727
    .line 728
    .line 729
    move-result-wide v0

    .line 730
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 731
    .line 732
    .line 733
    move-result-object v26

    .line 734
    const/16 v31, 0x2c

    .line 735
    .line 736
    const/16 v32, 0x0

    .line 737
    .line 738
    const/16 v27, 0x0

    .line 739
    .line 740
    const/16 v28, 0x0

    .line 741
    .line 742
    const/16 v30, 0x0

    .line 743
    .line 744
    invoke-static/range {v24 .. v32}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4}, Let/c;->c()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    check-cast v0, Lkotlin/Result;

    .line 752
    .line 753
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 761
    .line 762
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_11

    .line 767
    .line 768
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 769
    .line 770
    sget-object v25, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 771
    .line 772
    const-string v26, "Internal error"

    .line 773
    .line 774
    const-string v28, "gateway"

    .line 775
    .line 776
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v29

    .line 784
    const/16 v31, 0x24

    .line 785
    .line 786
    const/16 v32, 0x0

    .line 787
    .line 788
    const/16 v27, 0x0

    .line 789
    .line 790
    const/16 v30, 0x0

    .line 791
    .line 792
    move-object/from16 v24, v1

    .line 793
    .line 794
    invoke-direct/range {v24 .. v32}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 795
    .line 796
    .line 797
    return-object v1

    .line 798
    :cond_11
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$headerBiddingAdMarkup:Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;

    .line 807
    .line 808
    sget-object v2, Lgatewayprotocol/v1/AdResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;

    .line 809
    .line 810
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->newBuilder()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    const-string v6, "newBuilder()"

    .line 815
    .line 816
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2, v4}, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)Lgatewayprotocol/v1/AdResponseKt$Dsl;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-virtual {v1}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdData()Lcom/google/protobuf/ByteString;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    const-string v6, "headerBiddingAdMarkup.adData"

    .line 828
    .line 829
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v2, v4}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdData(Lcom/google/protobuf/ByteString;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1}, Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;->getAdDataVersion()I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataVersion(I)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    const-string v4, "response.trackingToken"

    .line 847
    .line 848
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    const-string v4, "response.impressionConfiguration"

    .line 859
    .line 860
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setImpressionConfiguration(Lcom/google/protobuf/ByteString;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getImpressionConfigurationVersion()I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setImpressionConfigurationVersion(I)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    const-string v4, "response.webviewConfiguration"

    .line 878
    .line 879
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    const-string v4, "response.adDataRefreshToken"

    .line 890
    .line 891
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->hasError()Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-eqz v1, :cond_12

    .line 902
    .line 903
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    const-string v4, "response.error"

    .line 908
    .line 909
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    .line 913
    .line 914
    .line 915
    :cond_12
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdData()Lcom/google/protobuf/ByteString;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    invoke-static {v1}, Lcom/google/protobuf/kotlin/ByteStringsKt;->isNotEmpty(Lcom/google/protobuf/ByteString;)Z

    .line 923
    .line 924
    .line 925
    move-result v1

    .line 926
    if-eqz v1, :cond_13

    .line 927
    .line 928
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdData()Lcom/google/protobuf/ByteString;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v2, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdData(Lcom/google/protobuf/ByteString;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getAdDataVersion()I

    .line 939
    .line 940
    .line 941
    move-result v0

    .line 942
    invoke-virtual {v2, v0}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->setAdDataVersion(I)V

    .line 943
    .line 944
    .line 945
    :cond_13
    invoke-virtual {v2}, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_build()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    goto/16 :goto_9

    .line 950
    .line 951
    :goto_12
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 952
    .line 953
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getHandleGatewayAdResponse$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 958
    .line 959
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 960
    .line 961
    const-string v5, "response"

    .line 962
    .line 963
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    iget-object v5, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$context:Landroid/content/Context;

    .line 967
    .line 968
    iget-object v6, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$placement:Ljava/lang/String;

    .line 969
    .line 970
    if-eqz v3, :cond_14

    .line 971
    .line 972
    move/from16 v8, v20

    .line 973
    .line 974
    goto :goto_13

    .line 975
    :cond_14
    const/4 v8, 0x0

    .line 976
    :goto_13
    iput-object v12, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$0:Ljava/lang/Object;

    .line 977
    .line 978
    iput-object v12, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$1:Ljava/lang/Object;

    .line 979
    .line 980
    iput-object v12, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->L$2:Ljava/lang/Object;

    .line 981
    .line 982
    const/4 v3, 0x5

    .line 983
    iput v3, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->label:I

    .line 984
    .line 985
    move-object v3, v0

    .line 986
    move-object/from16 v9, p0

    .line 987
    .line 988
    invoke-interface/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;->invoke(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLrs/c;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    if-ne v0, v11, :cond_15

    .line 993
    .line 994
    return-object v11

    .line 995
    :cond_15
    :goto_14
    check-cast v0, Lcom/unity3d/ads/core/data/model/LoadResult;

    .line 996
    .line 997
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    .line 998
    .line 999
    if-eqz v1, :cond_17

    .line 1000
    .line 1001
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 1002
    .line 1003
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidLoad;)Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->$opportunityId:Lcom/google/protobuf/ByteString;

    .line 1008
    .line 1009
    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    if-nez v0, :cond_16

    .line 1014
    .line 1015
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 1016
    .line 1017
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 1018
    .line 1019
    const-string v3, "[UnityAds] Ad not found"

    .line 1020
    .line 1021
    const-string v5, "ad_object_not_found"

    .line 1022
    .line 1023
    const/16 v8, 0x34

    .line 1024
    .line 1025
    const/4 v9, 0x0

    .line 1026
    const/4 v4, 0x0

    .line 1027
    const/4 v6, 0x0

    .line 1028
    const/4 v7, 0x0

    .line 1029
    move-object v1, v0

    .line 1030
    invoke-direct/range {v1 .. v9}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_16

    .line 1034
    :cond_16
    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    .line 1035
    .line 1036
    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 1037
    .line 1038
    .line 1039
    move-object v0, v1

    .line 1040
    goto :goto_16

    .line 1041
    :cond_17
    instance-of v1, v0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 1042
    .line 1043
    if-eqz v1, :cond_18

    .line 1044
    .line 1045
    goto :goto_16

    .line 1046
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1047
    .line 1048
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1049
    .line 1050
    .line 1051
    throw v0
    :try_end_d
    .catch Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException; {:try_start_d .. :try_end_d} :catch_0

    .line 1052
    :goto_15
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidLoad$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidLoad;

    .line 1053
    .line 1054
    invoke-static {v1, v0}, Lcom/unity3d/ads/core/domain/AndroidLoad;->access$handleGatewayException(Lcom/unity3d/ads/core/domain/AndroidLoad;Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    :goto_16
    return-object v0
.end method
